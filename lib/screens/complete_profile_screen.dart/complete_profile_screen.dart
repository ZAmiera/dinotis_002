// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'component/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});
  static String routeName = "/complete_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Complete Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:  Body(),
    );
  }
}