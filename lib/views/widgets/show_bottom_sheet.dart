import 'package:flutter/material.dart';
import 'package:nots_app/consts_file.dart';
import 'package:nots_app/views/widgets/cutom_text_field.dart';
import 'package:nots_app/views/widgets/custom_button.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          CutomElevatedButton(),
          SizedBox(height: 10,)

          // TextButton(onPressed: (){}, child: Text('hello'))
        ],
      ),
    );
  }
}
