import 'package:flutter/material.dart';
import 'package:noteapp/models/note_model.dart';

import '../../constant.dart';
import 'color_items.dart';

class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {
  late int isPicked;
  @override
  void initState() {
    isPicked = kColorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                widget.note.color = kColorsList[index].value;
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
