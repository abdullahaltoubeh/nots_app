import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_app_bar.dart';
import 'package:nots_app/views/widgets/cutom_text_field.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          CustomAppBar(
            title: 'Edit Note',icon: Icons.check,
          ),

          SizedBox(height:16),
          const CustomTextField(hint: 'Title'),
          SizedBox(height:16),
          const CustomTextField(
            hint: 'Content',
            maxLines: 5,
          )
        ],
      ),
    );




    }
  }
