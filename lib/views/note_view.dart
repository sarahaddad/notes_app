import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_view_body.dart';
import 'package:noteapp/views/widgets/note_bottom_sheet.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomBody(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const NoteBottomSheet();
              });
        },
      ),
    );
  }
}
