import 'package:flutter/material.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/custom_edit_note_viewbody.dart';
import 'package:noteapp/views/widgets/custom_view_body.dart';
import 'package:noteapp/views/widgets/note_bottom_sheet.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomEditNoteBody(
        note: note,
      ),
    );
  }
}
