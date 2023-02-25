// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OTP Verivication",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}
