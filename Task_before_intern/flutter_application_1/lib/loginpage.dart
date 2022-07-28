// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'homepage.dart';
import 'package:flutter/gestures.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 25),
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Image.asset('assets/images/login_screen_vector.png')),
              SizedBox(height: 20),
              Text(
                "Let's Sign you in.",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 33.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                "You have been missed.",
                style: TextStyle(
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 500,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "email",
                            labelText: "Email",
                            labelStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder()),
                        obscureText: false,
                        maxLength: 20,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "password",
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder()),
                        obscureText: false,
                        maxLength: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("Recover Password",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Sign up',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 14.0,
                                  ))
                            ]),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 40.0, left: 25, right: 25.0, bottom: 40.0),
                          child: FlatButton(
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.amber,
                            onPressed: () {},
                            minWidth: 600,
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
