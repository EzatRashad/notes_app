import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../core/utiles/utiles.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
    List<NoteModel>? note;

  fetchNotes() {
    var notesBox = Hive.box<NoteModel>(Utils.kNoteBox);
    note =notesBox.values.toList();
  }
}
