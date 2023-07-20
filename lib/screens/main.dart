import 'package:flutter/material.dart';
import 'package:login_ui/screens/dashboard_page.dart';
import 'package:login_ui/screens/login_page.dart';
import 'package:login_ui/screens/otp_page.dart';
//import 'package:login_ui/login_page.dart';
import 'package:login_ui/screens/splash_screen.dart';
//import 'package:login_ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}

