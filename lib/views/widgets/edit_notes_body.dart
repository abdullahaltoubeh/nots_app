import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/views/widgets/custom_app_bar.dart';
import 'package:nots_app/views/widgets/cutom_text_field.dart';

class EditNotesBody extends StatefulWidget {
  const EditNotesBody({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNotesBody> createState() => _EditNotesBodyState();
}

class _EditNotesBodyState extends State<EditNotesBody> {
   String?  title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: (){
              widget.note.title=title?? widget.note.title;
              widget.note.subTitle=subtitle?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 16),
           CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title=value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onChanged: (value){
            subtitle=value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
