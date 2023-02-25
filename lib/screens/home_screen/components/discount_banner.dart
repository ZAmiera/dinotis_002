// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


import '../../../constants.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(70),
      ),
      decoration: BoxDecoration(
        //primary color
        color: Color(0xFF8C5C3B), 
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("assets/images/iklan-1.png"),
          fit: BoxFit.cover,
        ),
      ),
      // child: Text.rich(
      //   TextSpan(
      //     style: TextStyle(color: Colors.white),
      //     children: [
      //       TextSpan(text: "A Summer Surpise\n"),
      //       TextSpan(
      //         text: "Cashback 20%",
      //         style: TextStyle(
      //           fontSize: getProportionateScreenWidth(24),
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
