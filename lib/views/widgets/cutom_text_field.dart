import 'package:flutter/material.dart';
import 'package:nots_app/consts_file.dart';

class CustomTextField extends StatelessWidget {
  const  CustomTextField({super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value){
          if(value == null || value.isEmpty){
            return 'Field is required';
          }
          return null;

        },
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(Colors.white),
          focusedBorder: buildBorder(kPrimaryColor),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.brown));
}
