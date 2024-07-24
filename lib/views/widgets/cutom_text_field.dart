import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nots_app/consts_file.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(

        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: 'Title',
          hintStyle:const TextStyle(color: kPrimaryColor),
          // border: buildBorder(),
          enabledBorder: buildBorder(Colors.white),
          focusedBorder: buildBorder(kPrimaryColor),
        ),
      ),
    );
  }
}
OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.brown)
  );
}
