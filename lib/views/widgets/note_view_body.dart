import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:nots_app/cubits/notes_cubit/notes_states.dart';
import 'package:nots_app/views/widgets/notes_list_view.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
@override
void initState(){

  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
 super.initState();


}
  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
         const SizedBox(height: 50,),
          CustomAppBar(title: 'Notes',icon: Icons.search),
          const Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

