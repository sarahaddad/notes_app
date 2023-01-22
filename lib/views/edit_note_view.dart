import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_edit_note_viewbody.dart';
import 'package:noteapp/views/widgets/custom_view_body.dart';
import 'package:noteapp/views/widgets/note_bottom_sheet.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomEditNoteBody(),
    );
  }
}
