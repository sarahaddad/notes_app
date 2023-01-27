import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/view_notes_cubit/view_notes_cubit.dart';
import 'package:noteapp/cubits/view_notes_cubit/view_notes_states.dart';
import 'package:noteapp/models/note_model.dart';

import 'note_item_view.dart';

class ListNoteItems extends StatelessWidget {
  const ListNoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewNoteCubit, ViewNoteStates>(
      builder: ((context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ViewNoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(
                    note: notes[index],
                  ),
                );
              })),
        );
      }),
    );
  }
}
