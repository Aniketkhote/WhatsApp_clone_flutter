import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                'Verify your phone number',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 30),
              Text(
                'Whatsapp Clone will send to you SMS (carrier charges may apply) to verify yourphone number. Enter your country code and phone number.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
