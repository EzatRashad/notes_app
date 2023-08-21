import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../core/utiles/utiles.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  static NotesCubit get(context) => BlocProvider.of(context);

  fetchNotes(NoteModel note) async {
    try {
      var notesBox = Hive.box<NoteModel>(Utils.kNoteBox);
      
      emit(NoteSuccess(notesBox.values.toList()));
    } catch (e) {
      emit(NoteError(e.toString()));
    }
  }
}
