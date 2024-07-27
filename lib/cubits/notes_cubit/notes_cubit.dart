import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nots_app/consts_file.dart';
import 'package:nots_app/cubits/notes_cubit/notes_states.dart';

import '../../models/note_model.dart';

class NotesCubit extends Cubit<NoteStates> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes= noteBox.values.toList();
      emit(NotesSuccess(notes));
    }catch(e){
      emit(NotesFailure(e.toString()));
    }
  }
}