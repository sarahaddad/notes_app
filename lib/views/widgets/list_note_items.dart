import 'package:flutter/widgets.dart';

import 'note_item_view.dart';

class ListNoteItems extends StatelessWidget {
  const ListNoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: ((context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(),
            );
          })),
    );
  }
}
