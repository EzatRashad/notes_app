import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hive/models/note_model.dart';

import '../../../../cubits/cubit/notes_cubit.dart';
import 'note_item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>? notes = BlocProvider.of<NotesCubit>(context).note ;

        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: notes!.length,
          itemBuilder: (context, index) =>  Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Item(note: notes[index],),
          ),
        );
      },
    );
  }
}
