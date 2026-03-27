import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Orders",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 4, // placeholder items
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order #${index + 1}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),

                const SizedBox(height: 6),
                const Text("Status: Delivered",
                    style: TextStyle(color: Colors.green)),

                const SizedBox(height: 6),
                const Text("Total Amount: \$100.00"),

                const SizedBox(height: 6),
                Text("Date: ${DateTime.now().toLocal().toString().substring(0, 10)}",
                    style: const TextStyle(color: Colors.black54)),
              ],
            ),
          );
        },
      ),
    );
  }
}