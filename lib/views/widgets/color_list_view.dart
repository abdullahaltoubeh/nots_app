import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isActive});

  final Color color;
 final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(

      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: color,
      ),
    ) :CircleAvatar(
      radius: 32,
      backgroundColor: color,
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});
  @override
  State<ColorListView> createState() => _ColorListViewState();

}

class _ColorListViewState extends State<ColorListView> {

  List<Color> colors =const
  [
    Colors.pink,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.teal,
    Colors.lightGreen
  ];
Color? color;
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GestureDetector(
                onTap: (){
                   currentIndex = index;
                   color= colors[index];
                   BlocProvider.of<AddNoteCubit>(context).color=color!;
                  setState(() {

                  });
                },
                child: ColorItem(
                  isActive: currentIndex == index ? true: false,
                  color: colors[index],
                ),
              ),
            );
          }),
    );
  }
}
