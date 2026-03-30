import 'package:ecommerce/repository/order_repository.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  final OrderRepository _orderRepo = OrderRepository();

  List<OrdersGet200ResponseCurrentOrdersInner> allOrders = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchOrders();
  }

  Future<void> fetchOrders() async {
    try {
      if (!mounted) return;
      setState(() => isLoading = true);

      final response = await _orderRepo.getOrders();

      if (mounted) {
        setState(() {
          allOrders = [
            ...response.currentOrders.toList(),
            ...response.pastOrders.toList(),
          ];
          isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to load orders: $e")),
        );
      }
    }
  }

  // NEW: Method to handle the payment button click
  Future<void> _handlePayNow(String orderId) async {
    try {
      // Show a loading dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );

      // Call the API we fixed in OrderRepository
      await _orderRepo.mockPayment(orderId);

      if (mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Payment Successful!")),
        );
        // Refresh the list to show the new "PAID" status
        fetchOrders();
      }
    } catch (e) {
      if (mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Payment failed: $e")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Orders",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : allOrders.isEmpty
          ? const Center(child: Text("No orders found"))
          : RefreshIndicator(
        onRefresh: fetchOrders,
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: allOrders.length,
          itemBuilder: (context, index) {
            final order = allOrders[index];

            // 1. Handle Status
            final statusString = order.status.name.toLowerCase();
            bool isPaid = statusString == 'paid';
            Color statusColor = isPaid ? Colors.green : Colors.orange;

            // 2. Handle Date
            String dateDisplay = "N/A";
            if (order.createdAt != null) {
              try {
                dateDisplay = DateTime.parse(order.createdAt!)
                    .toLocal()
                    .toString()
                    .substring(0, 10);
              } catch (_) {}
            }

            return Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "ID: ${order.orderId?.substring(0, 8) ?? 'N/A'}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold)),
                      Text(statusString.toUpperCase(),
                          style: TextStyle(
                              color: statusColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                    ],
                  ),
                  const Divider(),

                  if (order.items != null)
                    ...order.items!.map((item) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${item.name} (x${item.quantity})",
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    )),

                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date: $dateDisplay",
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 12)),
                      Text(
                        "Total: \$${(order.totalAmount ?? 0).toStringAsFixed(2)}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                            fontSize: 16),
                      ),
                    ],
                  ),

                  // ✅ ADDED PAY NOW BUTTON
                  if (!isPaid && order.orderId != null) ...[
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => _handlePayNow(order.orderId!),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text("PAY NOW (MOCK)"),
                      ),
                    ),
                  ],
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}