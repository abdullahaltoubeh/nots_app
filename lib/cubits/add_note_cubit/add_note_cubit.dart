import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nots_app/consts_file.dart';
import 'package:nots_app/models/note_model.dart';

import 'add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());
 Color color= Colors.pink;
  addNote(NoteModel note) async {
    note.color=color.value;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
