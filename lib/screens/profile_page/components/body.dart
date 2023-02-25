import 'package:dinotis/screens/change_password/change_password_page.dart';
import 'package:dinotis/screens/profile_page/components/profile_header.dart';
import 'package:dinotis/screens/profile_page/components/widget.dart';
import 'package:dinotis/screens/update_profile_page/update_profile_screen.dart';
import 'package:dinotis/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Column(
        children: [
          // SizedBox(
          //   width: 10,
          //   height: 15,
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ), //add user name here
                    Text(
                      "user@gmail.com",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ), //add user email here
                    Text(
                      "Basic",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xAAF97316),
                      ),
                    ) //
                  ],
                ) //add user name here
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MenuWidget(
            title: "Edit profil",
            icon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/edit 2.svg",
                  color: Color(0xAAF97316),
                )),
            onPress: () =>
                Navigator.pushNamed(context, UpdateProfileScreen.routeName),
            rightIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/arrowright1.svg",
                )),
          ),
          MenuWidget(
            title: "Ganti kata sandi",
            icon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/key.svg",
                  color: Color(0xAAF97316),
                )),
            onPress: () =>
                Navigator.pushNamed(context, ChangePasswordScreen.routeName),
            rightIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/arrowright1.svg")),
          ),
          MenuWidget(
            title: "Disimpan",
            icon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/save2.svg",
                  color: Color(0xAAF97316),
                )),
            onPress: () {},
            rightIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/arrowright1.svg")),
          ),
        ],
      ),
    ));
  }
}
