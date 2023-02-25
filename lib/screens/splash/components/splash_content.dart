// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.text, required this.image,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      Spacer(),
      Text(
        "DINOTIS",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: ktextColor,
            fontWeight: FontWeight.w900
            ),
            ),
      Text(text, textAlign: TextAlign.center),
      Spacer(flex: 2),
      Image.asset(
        image,
        height: getProportionateScreenHeight(265),
        width: getProportionateScreenWidth(335),
      )
    ]
    );
  }
}