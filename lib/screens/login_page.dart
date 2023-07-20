import 'package:flutter/material.dart';
import 'package:login_ui/screens/signup_page.dart';
//import 'package:login_ui/signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bgimage.png'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 90, right: 90, top: 30),
                child: Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/logo.png'),
                        radius: MediaQuery.of(context).size.height *0.08,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Sign in',style: TextStyle(
                      color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: nameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.white60),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: " Email",

                      hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: passwordController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white60),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: " Password",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text('Forgot Password',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  width: 60,
                  padding: const EdgeInsets.only(left: 90, right: 90),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: Color(0xff85E9FF),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )),
              SizedBox(
                height: 40,
              ),
              Container(
                  decoration: BoxDecoration(),
                  height: 60,
                  width: 70,
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: Color(0xff85E9FF),
                    ),
                    child: const Text(
                      'Create new Account',
                      style: TextStyle(fontSize:25, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                  )),
            ],
          ),
        ),

      ),
    );
  }
}
