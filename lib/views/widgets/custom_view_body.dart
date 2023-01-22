import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';

import 'list_note_items.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SafeArea(child: CustomAppBar(icon: Icons.search, title: 'Notes')),
          Expanded(
            child: ListNoteItems(),
          ),
        ],
      ),
    );
  }
}
