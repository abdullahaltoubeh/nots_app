import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.iconType, this.onPressed});

  final IconData iconType;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
          child: IconButton(
        onPressed: onPressed,
        icon: Icon(iconType),
      )),
    );
  }
}
