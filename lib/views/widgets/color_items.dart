import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';

import '../../constant.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    required this.color,
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ))
        : CircleAvatar(
            backgroundColor: color,
            radius: 34,
          );
  }
}

class ColorItemsList extends StatefulWidget {
  const ColorItemsList({super.key});

  @override
  State<ColorItemsList> createState() => _ColorItemsListState();
}

class _ColorItemsListState extends State<ColorItemsList> {
  int isPicked = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: (() {
                isPicked = index;
                BlocProvider.of<AddNoteCubit>(context).color =
                    kColorsList[index];
                setState(() {});
              }),
              child: ColorItem(
                color: kColorsList[index],
                isActive: isPicked == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
