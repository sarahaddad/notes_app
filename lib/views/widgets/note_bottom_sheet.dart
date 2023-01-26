import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_states.dart';

import 'add_note_form.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return AddNoteCubit();
      },
      child: BlocConsumer<AddNoteCubit, AddNotesStates>(
        builder: (BuildContext context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
        listener: (BuildContext context, Object? state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            print('failed  ${state.errMsg}');
          }
        },
      ),
    );
  }
}
