import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/note_view_body.dart';
import 'package:nots_app/views/widgets/show_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NoteViewBody(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const ShowBottomSheet();
                });
          },

          child: const Icon(Icons.add)),
    );
  }
}

