import 'package:flutter/material.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/views/widgets/edit_notes_body.dart';
import 'package:nots_app/views/widgets/note_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key,required this.note});
    final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesBody(note: note,),
    );
  }
}
