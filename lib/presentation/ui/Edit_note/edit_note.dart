import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_hive/core/utiles/utiles.dart';
import 'package:notes_hive/models/note_model.dart';
import 'package:notes_hive/presentation/ui/home/widgets/custom_appbar.dart';

import '../../../core/themes/colors.dart';
import '../../../cubits/cubit/notes_cubit.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_form_filed.dart';

class EditNote extends StatefulWidget {
  EditNote({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  //late final String? title, content;
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();
  @override
  void initState() {
    title.text = widget.note.title;
    content.text = widget.note.subtitle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Edit Note',
                color: Colors.transparent,
              ),
              10.ph,
              CustomTextFiled(
                // hintT: widget.note.title,
                tc: title,
              ),
              40.ph,
              CustomTextFiled(
                // hintT: widget.note.subtitle,
                tc: content,
                maxLines: 5,
              ),
              100.ph,
              ButtonWidget(
                title: 'Done',
                width: double.infinity,
                buttonColor: AppColors.darkGrey,
                onTap: () {
                  widget.note.title = title.text;
                  widget.note.subtitle = content.text;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
