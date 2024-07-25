import 'package:flutter_bloc/flutter_bloc.dart';

import'add_note_states.dart';
class NoteCubit extends Cubit<AddNoteStates>{
  NoteCubit(): super (AddNoteInitial()) {

    }


}