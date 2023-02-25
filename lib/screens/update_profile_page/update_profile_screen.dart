import 'package:flutter/material.dart';
import 'components/body.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});
  static String routeName = "/UpdateProfile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Edit Profil"))),
      body: Body(),
    );
  }
}
