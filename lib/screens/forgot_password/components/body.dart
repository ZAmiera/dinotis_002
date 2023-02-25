// ignore_for_file: prefer_const_constructors, avoid_returning_null_for_void

import 'package:dinotis/components/default_button.dart';
import 'package:dinotis/components/form_error.dart';
import 'package:dinotis/components/no_account_text.dart';
import 'package:dinotis/size_config.dart';
import 'package:flutter/material.dart';


import '../../../components/custom_surfix_icon.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              Text(
                "Forgot Password", style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                 color: Colors.black,
                 fontWeight: FontWeight.bold
                 ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});
  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
         TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved : (newValue) => email = newValue!,
          onChanged: (value){
            if (value.isNotEmpty && !errors.contains(kEmailNullError)) {
              setState(() {
                errors.remove(kEmailNullError);
              });
            }else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
            return null;
          },
          validator: (value) {
            if (value!.isEmpty && !errors.contains(kEmailNullError)) {
              setState(() {
                errors.add(kEmailNullError);
              });
            }else if (!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.add(kInvalidEmailError);
              });
            
            }
            return null;
          },
          decoration: InputDecoration(
            labelText:"Email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Mail.svg",
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(30),),
        FormError(errors: errors),
        SizedBox(height: SizeConfig.screenHeight * 0.1,),
        DefaultButton(
          text: "Continue",
          press: () {
            if (_formKey.currentState!.validate()) {
              // disini akan diarahkan ke halaman reset password
              // menggunakan Navigator.pushNamed
            }
          },
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.1,),
        NoAccountText(),
        ],
      ),
    );
  }
}