import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../../consts_file.dart';
import 'color_item.dart';


class AddNoteColorListView extends StatefulWidget {
  const AddNoteColorListView({super.key});
  @override
  State<AddNoteColorListView> createState() => _AddNoteColorListViewState();

}

class _AddNoteColorListViewState extends State<AddNoteColorListView> {


Color? color;
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GestureDetector(
                onTap: (){
                   currentIndex = index;
                   color= kColors[index];
                   BlocProvider.of<AddNoteCubit>(context).color=color!;
                  setState(() {

                  });
                },
                child: ColorItem(
                  isActive: currentIndex == index ? true: false,
                  color: kColors[index],
                ),
              ),
            );
          }),
    );
  }
}
