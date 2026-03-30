import 'package:ecommerce/screens/admin_userscreen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/screens/adminhomescreen.dart';


class AdminMainNavigation extends StatefulWidget {
  const AdminMainNavigation({super.key});

  @override
  State<AdminMainNavigation> createState() => _AdminMainNavigationState();
}

class _AdminMainNavigationState extends State<AdminMainNavigation> {
  int _selectedIndex = 0;

  // List of screens the admin can visit
  final List<Widget> _screens = [
    const AdminHomePageScreen(),
    const AdminCreateUserScreen(), // The widget we created for user registration
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Create User',
          ),
        ],
      ),
    );
  }
}