import 'package:flutter/cupertino.dart';
import 'package:nots_app/views/widgets/cutom_text_field.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 32,),
        CustomTextField(hint: 'Title',),
        SizedBox(height: 16,),
        CustomTextField(hint: 'content',maxLines: 5,)
      ],
    );
  }
}
