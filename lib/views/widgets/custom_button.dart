import 'package:flutter/material.dart';

import '../../consts_file.dart';

class CutomElevatedButton extends StatelessWidget {
  const CutomElevatedButton({
    super.key,
    this.onTap, this.isLoading=false,
  });

  final void Function()? onTap;
  final isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        width: 330,
        height: 50,
        decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8)
        ),

        child: Center(
            child: isLoading ?const SizedBox(height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ) :const Text(
          'Add',
          style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18),
        )),
      ),
    );
  }
}
