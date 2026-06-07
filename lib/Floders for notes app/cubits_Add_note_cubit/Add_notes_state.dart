abstract class AddNotesState {}

class AddnotesInitial extends AddNotesState {}

class AddnotesLoding extends AddNotesState {}

class AddnotesSuccess extends AddNotesState {}

class AddnotesFailure extends AddNotesState {
  final String errMessage;

  AddnotesFailure(this.errMessage);
}

