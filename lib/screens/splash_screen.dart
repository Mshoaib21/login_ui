import 'dart:async';
import 'package:flutter/material.dart';

//import 'package:login_ui/login_page.dart';
import 'login_page.dart';
//import 'screens/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgimage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: MediaQuery.of(context).size.height * 0.22,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.22,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
            ),
          )),
    );
  }
}
