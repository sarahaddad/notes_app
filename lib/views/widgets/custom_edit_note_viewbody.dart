import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_textfield.dart';

import 'custom_app_bar.dart';

class CustomEditNoteBody extends StatelessWidget {
  const CustomEditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SafeArea(
            child: CustomAppBar(
              icon: Icons.check,
              title: "Edit Notes",
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: "Content",
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
