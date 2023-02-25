import 'package:flutter/material.dart';
import 'components/body.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  static String routeName = "/ChangePassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(
          //     onPressed: () {},
          //     icon: const Icon(Icons.arrow_back)), //back button
          title: Center(child: Text("Gantti kata sandi"))),
      body: Body(),
    );
  }
}
