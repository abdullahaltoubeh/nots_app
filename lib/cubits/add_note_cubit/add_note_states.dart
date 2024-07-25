import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
@immutable
abstract class AddNoteStates{}
class AddNoteInitial extends AddNoteStates{}
class AddNoteLoading extends AddNoteStates{}
class AddNoteSuccess extends AddNoteStates{}
class AddNoteFailure extends AddNoteStates{}
