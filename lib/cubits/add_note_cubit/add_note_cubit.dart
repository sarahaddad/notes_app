import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constant.dart';
import 'package:noteapp/models/note_model.dart';

import 'add_note_states.dart';

class AddNoteCubit extends Cubit<AddNotesStates> {
  AddNoteCubit() : super(AddNoteIntial());
  Color color = Color(0xff264653);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMsg: e.toString()));
    }
  }
}
