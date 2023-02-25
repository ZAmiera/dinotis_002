// ignore_for_file: unused_field, prefer_const_constructors, avoid_returning_null_for_void, curly_braces_in_flow_control_structures

import 'package:dinotis/components/custom_surfix_icon.dart';
import 'package:dinotis/components/default_button.dart';
import 'package:dinotis/components/form_error.dart';
import 'package:dinotis/constants.dart';
import 'package:dinotis/helper/keyboard.dart';
import 'package:dinotis/screens/forgot_password/forgot_password_screen.dart';
import 'package:dinotis/screens/login_success/login_success_screen.dart';
import 'package:dinotis/screens/update_profile_page/update_profile_screen.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';

import '../../profile_page/profile_screen.dart';

class EditForm extends StatefulWidget {
  // const SignForm({super.key});
  final _fromKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

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
                "Nama",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ],
          ),
          SizedBox(
            height: 16,
            width: 16,
          ),
          changeNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Email",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
            ],
          ),
          SizedBox(
            height: 16,
            width: 16,
          ),
          changeEmailFormField(),
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

  TextFormField changeNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "User",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField changeEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "user@gmail.com", //add user email here!!
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
