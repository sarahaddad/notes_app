import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';

import 'note_item_view.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SafeArea(
            child: CustomAppBar(),
          ),
          Expanded(
            child: ListNoteItems(),
          ),
        ],
      ),
    );
  }
}

class ListNoteItems extends StatelessWidget {
  const ListNoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      );
    }));
  }
}
