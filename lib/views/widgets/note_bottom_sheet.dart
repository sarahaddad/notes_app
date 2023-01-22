import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_textbutton.dart';
import 'package:noteapp/views/widgets/custom_textfield.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLine: 5,
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
