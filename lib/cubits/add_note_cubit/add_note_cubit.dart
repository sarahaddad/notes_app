import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_note_states.dart';

class AddNoteCubit extends Cubit<AddNotesStates> {
  AddNoteCubit() : super(AddNoteIntial());
}
