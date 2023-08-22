import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_hive/core/utiles/utiles.dart';
import 'package:notes_hive/models/note_model.dart';
import 'package:notes_hive/presentation/widgets/button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/themes/colors.dart';
import '../../../../cubits/add_note/add_note_cubit.dart';
import '../../../widgets/text_form_filed.dart';

class BottomSheetBody extends StatefulWidget {
  BottomSheetBody({super.key});

  @override
  State<BottomSheetBody> createState() => _BottomSheetBodyState();
}

class _BottomSheetBodyState extends State<BottomSheetBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNoteError) {
            print('errorrrr:: ${state.error}');
          }
        },
        builder: (context, state) {
          var cubit = AddNoteCubit.get(context);
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading,
            blur: 1,
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.only(
                  right: 15,
                  left: 15,
                  top: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                color: Colors.amber,
              ),
              child: AbsorbPointer(
                absorbing: state is AddNoteLoading,
                child: SingleChildScrollView(
                  child: Form(
                    key: formkey,
                    autovalidateMode: autovalidateMode,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        10.ph,
                        CustomTextFiled(
                          hintT: 'Note Title',
                          onsaved: (v) {
                            title = v;
                          },
                        ),
                        40.ph,
                        CustomTextFiled(
                          hintT: 'Note content',
                          maxLines: 5,
                          onsaved: (v) {
                            subtitle = v;
                          },
                        ),
                        55.ph,
                        ButtonWidget(
                          title: 'Add Note',
                          width: double.infinity,
                          buttonColor: AppColors.darkGrey,
                          onTap: () {
                            if (formkey.currentState!.validate()) {
                              formkey.currentState!.save();
                              
                              var note = NoteModel(
                                date: DateFormat.yMd().format(DateTime.now()),
                                title: title!,
                                subtitle: subtitle!,
                              );
                              cubit.addNote(note);
                            } else {
                              autovalidateMode = AutovalidateMode.always;
                            }
                          },
                        ),
                        15.ph,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
