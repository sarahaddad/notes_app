import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/cubits/view_notes_cubit/view_notes_states.dart';

import '../../constant.dart';
import '../../models/note_model.dart';

class ViewNoteCubit extends Cubit<ViewNoteStates> {
  ViewNoteCubit() : super(ViewNoteIntial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
