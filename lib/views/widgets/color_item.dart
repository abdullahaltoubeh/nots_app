import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isActive});

  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 32,
            backgroundColor: color,
          );
  }
}
