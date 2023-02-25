import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    required this.rightIcon,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconButton icon;
  final VoidCallback onPress;
  final IconButton rightIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(width: 35, height: 35, child: icon),
      title: Text(title,
          style:
              Theme.of(context).textTheme.bodyLarge), //!!!PERLU DI GANTI NGGA??
      trailing: Container(
        width: 30,
        height: 30,
        child: rightIcon,
      ),
    );
  }
}
