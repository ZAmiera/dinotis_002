// ignore_for_file: prefer_const_constructors

import 'package:dinotis/screens/home_screen/components/categories.dart';
import 'package:dinotis/screens/home_screen/components/discount_banner.dart';
import 'package:dinotis/screens/home_screen/components/home_header.dart';
import 'package:dinotis/screens/home_screen/components/popular_product.dart';
import 'package:dinotis/screens/home_screen/components/special_offers.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({super.key});
@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}