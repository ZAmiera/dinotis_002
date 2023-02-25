import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'edit_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: SizeConfig.screenHeight * 0.04),
                // Text(
                //   "Welcome Back",
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontSize: getProportionateScreenWidth(28),
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // Text(
                //   "Sign in with your email and password \nor continue with social media",
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontSize: getProportionateScreenWidth(16),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 71,
                        height: 71,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,

                          maxRadius: 5,
                          // foregroundImage: NetworkImage("enterImageUrl"),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "User",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ), //add user name here
                          Text(
                            "user@gmail.com",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ), //add user email here
                        ],
                      ) //add user name here
                    ],
                  ),
                ),
                EditForm(),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
