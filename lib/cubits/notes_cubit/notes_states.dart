import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';
@immutable
abstract class NoteStates{}
class NotesInitial extends NoteStates{}
class NotesLoading extends NoteStates{}
class NotesSuccess extends NoteStates{
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
class NotesFailure extends NoteStates{
  final errMessage;
  NotesFailure(this.errMessage );
}