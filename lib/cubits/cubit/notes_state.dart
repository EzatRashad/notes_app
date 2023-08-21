part of 'notes_cubit.dart';

abstract class NotesState {}
class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}

class NoteError extends NotesState {
  final String error;
  NoteError(
    this.error,
  );
}
