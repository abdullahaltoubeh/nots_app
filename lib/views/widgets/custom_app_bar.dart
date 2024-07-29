import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title,required this.icon, this.onPressed});
  final void Function()? onPressed;
  String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(fontSize: 24)),
        const Spacer(),
         CustomIcon(
           onPressed: onPressed,
          iconType: icon,
        )
      ],
    );
  }
}
