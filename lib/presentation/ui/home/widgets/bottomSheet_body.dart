import 'package:flutter/material.dart';
import 'package:notes_hive/core/utiles/utiles.dart';
import 'package:notes_hive/presentation/widgets/button_widget.dart';

import '../../../../core/themes/colors.dart';
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
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: Colors.amber,
      ),
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
            const Spacer(),
            ButtonWidget(
              title: 'Add Note',
              width: double.infinity,
              buttonColor: AppColors.darkGrey,
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
