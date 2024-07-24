import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const NoteViewBody(),
      floatingActionButton: FloatingActionButton(onPressed: (){
      showModalBottomSheet(context: context, builder: (context){
        return const ShowButtonSheet();
      });
      },child: Icon(Icons.add)),
    );
  }
}
class ShowButtonSheet extends StatelessWidget {
  const ShowButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
  return Container();
  }
}
