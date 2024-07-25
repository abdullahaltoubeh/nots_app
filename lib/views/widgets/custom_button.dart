import 'package:flutter/material.dart';

import '../../consts_file.dart';

class CutomElevatedButton extends StatelessWidget {
  const CutomElevatedButton({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 290,
        height: 40,
        decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8)
        ),
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
