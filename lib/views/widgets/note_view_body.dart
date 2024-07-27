import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/notes_list_view.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

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

