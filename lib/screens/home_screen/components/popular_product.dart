// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_constructors

import 'package:dinotis/components/product_card.dart';
import 'package:dinotis/models/Product.dart';
import 'package:flutter/material.dart';



import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Jadwal Sedang Berlangsung", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // bagian ini adalah bagian yang akan di looping
              // untuk menampilkan produk yang popular
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  // return SizedBox.shrink(); // here by default width and height is 0
               
                 return SizedBox(
                  height: getProportionateScreenHeight(0),
                  width: getProportionateScreenWidth(12)
                  );

                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
