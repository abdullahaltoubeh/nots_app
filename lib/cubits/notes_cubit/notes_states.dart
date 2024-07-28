import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';
@immutable
abstract class NotesStates{}
class NotesInitial extends NotesStates{}
class NotesSuccess extends NotesStates{}