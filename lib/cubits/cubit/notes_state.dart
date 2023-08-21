part of 'notes_cubit.dart';

abstract class NotesState {}
class NotesInitial extends NotesState {}


class NoteSuccess extends NotesState {
  final List<NoteModel> note;
  NoteSuccess(this.note);
}
