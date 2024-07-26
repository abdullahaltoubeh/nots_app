import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:nots_app/views/widgets/cutom_text_field.dart';
import 'package:nots_app/views/widgets/custom_button.dart';

import 'add_note_form.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      listener: (context, state) {
        if(state is AddNoteFailure){
          print('failure');
        }
        if(state is AddNoteSuccess){
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: const AddNoteForm());
      },
    );
  }
}
