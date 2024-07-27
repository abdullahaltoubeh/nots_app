import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:nots_app/models/note_model.dart';

import '../../cubits/add_note_cubit/add_note_cubit.dart';
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
  String? title, subTitle;

  @override
  Widget build(context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SizedBox(
        height: 377,
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
                subTitle = value;
              },
              hint: 'content',
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<AddNoteCubit,AddNoteStates>(
              builder: (context, state) {
                return CutomElevatedButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) { 
                      formKey.currentState!.save();
                      var noteModel = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: DateTime.now().toString(),
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
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
