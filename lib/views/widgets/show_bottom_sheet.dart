import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_states.dart';

import 'add_note_form.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=> AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteStates>(
        listener: (BuildContext context, state) {
          if (state is AddNoteFailure) {
            print('failure');
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
          builder: (context,state){
      return AbsorbPointer(
        absorbing: state is AddNoteLoading? true : false,
        child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(child: AddNoteForm()),
        ),
      );
      }
      ),
    );
  }
}
