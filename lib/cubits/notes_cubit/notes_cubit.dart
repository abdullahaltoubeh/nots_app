import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nots_app/consts_file.dart';
import 'package:nots_app/cubits/notes_cubit/notes_states.dart';

import '../../models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;

  fetchAllNotes() {

      var noteBox = Hive.box<NoteModel>(kNoteBox);

       notes= noteBox.values.toList();
;

  }
}