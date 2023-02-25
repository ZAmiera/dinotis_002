// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';



class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  const SplashScreen({super.key});

 @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        // padding: const EdgeInsets.all(32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Onboarding-bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Body(
          Container(),
        ),
      ),
    );
  }
}