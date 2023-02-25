// ignore_for_file: prefer_const_constructors

import 'package:dinotis/screens/otp/components/otp_form.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)
                ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04),
                Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "We sent your code to +62 895 343* ****",
                  textAlign: TextAlign.center,
                ),
                buildTimer(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.15),
                OtpForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Resend OTP Code",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("This code will expired in "),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 0),
                    duration: Duration(seconds: 60),
                    builder: (context, value, child) => Text(
                      "00:${value.toInt()}",
                      style: TextStyle(color: Colors.red),
                    ),
                    onEnd: () {},
                  ),
                ],
              );
  }
}

