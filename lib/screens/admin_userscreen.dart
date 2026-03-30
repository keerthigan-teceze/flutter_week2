import 'package:ecommerce/repository/admin_repository.dart';
import 'package:flutter/material.dart';

class AdminCreateUserScreen extends StatefulWidget {
  const AdminCreateUserScreen({super.key});

  @override
  State<AdminCreateUserScreen> createState() => _AdminCreateUserScreenState();
}

class _AdminCreateUserScreenState extends State<AdminCreateUserScreen> {
  final _formKey = GlobalKey<FormState>();
  final AdminRepository _adminRepo = AdminRepository();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  List<dynamic> _users = [];
  bool _isLoading = false;
  bool _isFetching = false;

  // Track if we are editing an existing user
  String? _currentEditingUserId;

  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  Future<void> _fetchUsers() async {
    setState(() => _isFetching = true);
    try {
      final users = await _adminRepo.getallusers();
      setState(() {
        _users = users;
      });
    } catch (e) {
      debugPrint("Error fetching users: $e");
    } finally {
      if (mounted) setState(() => _isFetching = false);
    }
  }

  // ✅ Unified Submit (Handle Create or Update)
  Future<void> _handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);

    try {
      if (_currentEditingUserId == null) {
        // CREATE MODE
        await _adminRepo.createUser(
          _nameController.text.trim(),
          _emailController.text.trim(),
          _passwordController.text.trim(),
        );
        _showSnackBar("✅ User created successfully!", Colors.green);
      } else {
        // UPDATE MODE
        await _adminRepo.updateUser(
          _currentEditingUserId!,
          _nameController.text.trim(),
          _emailController.text.trim(),
        );
        _showSnackBar("✅ User updated successfully!", Colors.blue);
      }

      _resetForm();
      _fetchUsers();
    } catch (e) {
      _showSnackBar("❌ Failed: $e", Colors.red);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  // ✅ DELETE USER
  Future<void> _handleDeleteUser(String userId) async {
    final confirm = await _showDeleteConfirmation();
    if (confirm != true) return;

    try {
      await _adminRepo.deleteUser(userId);
      _showSnackBar("✅ User deleted", Colors.orange);
      _fetchUsers();
    } catch (e) {
      _showSnackBar("❌ Delete failed: $e", Colors.red);
    }
  }

  // Helpers
  void _resetForm() {
    _nameController.clear();
    _emailController.clear();
    _passwordController.clear();
    setState(() => _currentEditingUserId = null);
  }

  void _showSnackBar(String message, Color color) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), backgroundColor: color),
      );
    }
  }

  Future<bool?> _showDeleteConfirmation() {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Delete User?"),
        content: const Text("This action cannot be undone."),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text("CANCEL")),
          TextButton(onPressed: () => Navigator.pop(context, true), child: const Text("DELETE", style: TextStyle(color: Colors.red))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin: Manage Users"),
        backgroundColor: Colors.orange,
        actions: [
          if (_currentEditingUserId != null)
            IconButton(icon: const Icon(Icons.close), onPressed: _resetForm)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    _currentEditingUserId == null ? "Register New User" : "Editing User",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: "Full Name", border: OutlineInputBorder(), prefixIcon: Icon(Icons.person)),
                    validator: (val) => val!.isEmpty ? "Enter name" : null,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: "Email Address", border: OutlineInputBorder(), prefixIcon: Icon(Icons.email)),
                    validator: (val) => val!.contains("@") ? null : "Enter a valid email",
                  ),

                  // Only show password field during Creation
                  if (_currentEditingUserId == null) ...[
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(labelText: "Password", border: OutlineInputBorder(), prefixIcon: Icon(Icons.lock)),
                      obscureText: true,
                      validator: (val) => val!.length < 6 ? "Min 6 characters" : null,
                    ),
                  ],

                  const SizedBox(height: 15),
                  _isLoading
                      ? const CircularProgressIndicator()
                      : SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _handleSubmit,
                      style: ElevatedButton.styleFrom(backgroundColor: _currentEditingUserId == null ? Colors.orange : Colors.blue),
                      child: Text(_currentEditingUserId == null ? "CREATE USER" : "UPDATE USER", style: const TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 40, thickness: 2),
            const Text("Existing Users", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            Expanded(
              child: _isFetching
                  ? const Center(child: CircularProgressIndicator())
                  : _users.isEmpty
                  ? const Center(child: Text("No users found"))
                  : ListView.builder(
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  final user = _users[index];
                  return Card(
                    child: ListTile(
                      leading: const CircleAvatar(child: Icon(Icons.person)),
                      title: Text(user.name ?? "No Name"),
                      subtitle: Text(user.email ?? "No Email"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.blue),
                            onPressed: () {
                              setState(() {
                                _currentEditingUserId = user.id.toString();
                                _nameController.text = user.name ?? "";
                                _emailController.text = user.email ?? "";
                              });
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _handleDeleteUser(user.id.toString()),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}