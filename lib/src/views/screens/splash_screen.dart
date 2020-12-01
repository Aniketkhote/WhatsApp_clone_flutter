import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/src/views/screens/Auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isStart = false;

  @override
  void initState() {
    Timer(
      Duration(milliseconds: 2500),
      () {
        isStart = true;
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !isStart
          ? Container(
              color: Colors.green[400],
              child: Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  child: Icon(
                    Icons.whatshot,
                    size: 150,
                    color: Colors.green,
                  ),
                ),
              ),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  EdgeInsets.only(top: 100, bottom: 30, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Image.asset(
                      'assets/brand.png',
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .28),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Read our Privcy Policy, Tab \'Agree and Continue\' to accept the terms of Service.',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    color: Colors.green,
                    child: Text(
                      'Agree and continue'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
