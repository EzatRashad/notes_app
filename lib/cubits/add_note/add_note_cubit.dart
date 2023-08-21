import 'package:hive_flutter/adapters.dart';
import 'package:notes_hive/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utiles/utiles.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  static AddNoteCubit get(context) => BlocProvider.of(context);

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(Utils.kNoteBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteError(e.toString()));
    }
  }
}
