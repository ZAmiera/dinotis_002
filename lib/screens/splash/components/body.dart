// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, duplicate_import
import 'package:dinotis/constants.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';


import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body(Container container, {super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String,String>> splashData = [
    {
      "text": "LOREM IPSUM NI BOSS",
       "image": "assets/images/onboarding-1.png"

       },
    {
      "text": "LOREM IPSUM NI BOSS \nLOREM IPSUM NI BOSS", 
      "image": "assets/images/onboarding-2.png"

      },
    {
      "text": "LOREM IPSUM NI BOSS \nLOREM IPSUM NI BOSS",
       "image": "assets/images/onboarding-3.png"
       },
    ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged:(value){
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"]!,
                  text: splashData[index]["text"]!,
                   ),
                  ),
                ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)
                  ),
                child: Column(
                  children:<Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length, 
                        (index) => buildDot(index: index),
                        ),
                    ),
                    Spacer(flex: 1),
                   DefaultButton(
                      text: "Continue",
                      press: (){
                        Navigator.pushNamed(context, "/sign_in");
                      },
                   ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
                  margin: EdgeInsets.only(right: 5),
                  height: 6, 
                  width: currentPage == index ? 20 : 6,
                  decoration: BoxDecoration(
                    color: currentPage == index ? kPrimaryColor : Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(3),
                  ),
                );
  }
}




