
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts_file.dart';

class CutomElevatedButton extends StatelessWidget {
  const CutomElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.add,size: 24,color: Colors.black),
        label:const Padding(
          padding:
          EdgeInsets.only(left:  110.0,right: 130, bottom: 10,top: 10),
          child:  Text(
            'Add',
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor));
  }
}
