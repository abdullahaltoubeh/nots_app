import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'cutom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SizedBox(
        height: 370,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hint: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              maxLines: 5,
              onSaved: (value) {
                subtitle = value;
              },
              hint: 'content',
            ),
            const SizedBox(
              height: 16,
            ),
            CutomElevatedButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            const SizedBox(
              height: 10,
            )

            // TextButton(onPressed: (){}, child: Text('hello'))
          ],
        ),
      ),
    );
  }
}
