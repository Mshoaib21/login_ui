import 'package:flutter/material.dart';
import 'package:login_ui/screens/otp_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bgimage.png'),
                fit: BoxFit.cover),
          ),
          child:
          ListView(
            children:<Widget> [
              Padding(
                padding: const EdgeInsets.only(left: 70,right: 70,top: 40),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/logo.png'),
                      radius: MediaQuery.of(context).size.height * 0.08,
                    ),
                    SizedBox(height: 20),

                    Text('Create Account',style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 60),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black
                  ),
                  controller: nameController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white60
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),

                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                      fillColor:Colors.white,
                      filled: true,
                      hintText: " User Name",hintStyle: TextStyle(
                      color: Colors.grey
                  )

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black
                  ),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white60
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                      fillColor:Colors.white,
                      filled: true,
                      hintText: " Email",hintStyle: TextStyle(
                      color: Colors.grey
                  )
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black
                  ),
                  controller: passwordController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white60
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),

                        borderSide: BorderSide(
                          color: Colors.grey.shade200,

                        ),
                      ),
                      fillColor:Colors.white,
                      filled: true,
                      hintText: "Password",hintStyle: TextStyle(
                    color: Colors.grey,
                  )

                  ),
                ),
              ),
              SizedBox(height: 30,),
              // TextButton(
              //   onPressed: () {
              //     //forgot password screen
              //   },
              //
              //   child: const Text('Forgot Password',style: TextStyle(color: Colors.white,fontSize: 20)),
              // ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 60,
                  width: 60,
                  padding: const EdgeInsets.only(left: 60,right: 60),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      primary: Color(0xff85E9FF),
                    ),
                    child: const Text('Create new Account',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> OtpPage()),);

                    },
                  )
              ),

              SizedBox(height: 50),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  width: 60,
                  padding: const EdgeInsets.only(left: 90,right: 90),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      primary: Color(0xff85E9FF),
                    ),
                    child: const Text('Sign in',style: TextStyle(fontSize: 30,color: Colors.white),),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
              ),
            ],
          ),
          // MyStatefulWidgetState()
      ),
    );

  }
}


