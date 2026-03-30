import 'package:ecommerce/screens/adminhomescreen.dart';
import 'package:ecommerce/screens/userscreen.dart';
import 'package:ecommerce/widgets/admin_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:ecommerce/services/api_manager.dart';
import 'package:ecommerce/screens/loginscreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final savedToken = prefs.getString("accessToken");
  final savedRole = prefs.getString("role");

  Widget startPage;

  if (savedToken != null && savedToken.isNotEmpty) {
    // ✅ Apply token so API works immediately
    ApiManager.setToken(savedToken);

    // ✅ Decide home page based on role
    if (savedRole == "admin") {
      startPage = const AdminMainNavigation();
    } else {
      startPage = const UserHomePageScreen();
    }
  } else {
    startPage = const LoginPage();
  }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: startPage,
  ));
}