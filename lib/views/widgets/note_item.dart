import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nots_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:nots_app/views/edit_notes_view.dart';

import '../../models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNotesView(
            note: note,
          );
        }));
      },
      child: Container(
          // color:Color( note.color),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 24),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4), fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(FontAwesomeIcons.trash),
                  color: Colors.black,
                  iconSize: 24,
                ),
                isThreeLine: true,
              ),
              Text(
                note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4), fontSize: 16),
              )
            ],
          )),
    );
  }
}
