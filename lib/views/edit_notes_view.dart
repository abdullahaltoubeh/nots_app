import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/edit_notes_body.dart';
import 'package:nots_app/views/widgets/note_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesBody(),
    );
  }
}
