import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          )
        ],
      ),
    );
  }
}
