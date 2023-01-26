abstract class AddNotesStates {}

class AddNoteIntial extends AddNotesStates {}

class AddNoteLoading extends AddNotesStates {}

class AddNoteSuccess extends AddNotesStates {}

class AddNoteFailure extends AddNotesStates {
  final String errMsg;

  AddNoteFailure({required this.errMsg});
}
