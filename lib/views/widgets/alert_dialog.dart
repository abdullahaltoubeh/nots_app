import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.blue,
      child: Container(
        color: Colors.blue,
        width: 200,
        height: 100,
      ),
    );
  }
}
