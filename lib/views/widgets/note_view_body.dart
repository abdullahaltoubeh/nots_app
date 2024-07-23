import 'package:flutter/cupertino.dart';
import 'package:nots_app/views/widgets/note_item.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}
//
// class AppBarBody extends StatelessWidget {
//   const AppBarBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//         children: [
//           SizedBox(height:70,),
//           CustomAppBar(),]);
//   }
// }
