import 'package:dinotis/components/default_button.dart';
import 'package:dinotis/helper/keyboard.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../profile_page/profile_screen.dart';

class ChangePasswordForm extends StatefulWidget {
  // const SignForm({super.key});
  final _fromKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Kata Sandi Lama",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ],
          ),
          SizedBox(
            height: 16,
            width: 16,
          ),
          oldPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Kata sandi baru",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
            ],
          ),
          SizedBox(
            height: 16,
            width: 16,
          ),
          newPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Ulangi kata sandi baru",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
            ],
          ),
          SizedBox(
            height: 16,
            width: 16,
          ),
          newPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(45)),
          DefaultButton(
            text: "Save",
            press: () {
              KeyboardUtil.hideKeyboard(context);
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
          ),
        ],
      ),
    );
  }

  TextFormField oldPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          hintText: "Masukkan kata sandi lama",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/eyeslash.svg"))),
    );
  }

  TextFormField newPasswordFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          hintText: "Masukkan kata sandi baru",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/eyeslash.svg"))),
    );
  }
}
