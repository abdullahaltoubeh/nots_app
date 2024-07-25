import 'package:flutter/material.dart';
import 'package:nots_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'notes_app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'
      ),

      // initialRoute: NotesView(),
      home: const NotesView(),
    );
  }
}
