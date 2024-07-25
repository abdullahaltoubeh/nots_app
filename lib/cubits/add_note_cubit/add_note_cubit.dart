import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nots_app/consts_file.dart';
import 'package:nots_app/models/note_model.dart';

import '../../models/note_model.dart';
import'add_note_states.dart';
class NoteCubit extends Cubit<AddNoteStates> {
  NoteCubit() : super (AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      emit(AddNoteSuccess());
     await noteBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());

    }
  }
}