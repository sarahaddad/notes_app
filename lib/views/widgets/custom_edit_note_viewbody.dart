import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/custom_textfield.dart';

import 'custom_app_bar.dart';

class CustomEditNoteBody extends StatefulWidget {
  const CustomEditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<CustomEditNoteBody> createState() => _CustomEditNoteBodyState();
}

class _CustomEditNoteBodyState extends State<CustomEditNoteBody> {
  @override
  Widget build(BuildContext context) {
    String? title, content;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SafeArea(
            child: CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<ViewNoteCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              icon: Icons.check,
              title: "Edit Notes",
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: widget.note.subTitle,
            onChanged: (value) {
              content = value;
            },
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
