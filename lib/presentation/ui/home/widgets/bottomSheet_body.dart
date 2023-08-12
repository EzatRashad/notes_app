import 'package:flutter/material.dart';
import 'package:notes_hive/core/utiles/utiles.dart';
import 'package:notes_hive/presentation/widgets/button_widget.dart';

import '../../../../core/themes/colors.dart';
import '../../../widgets/text_form_filed.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          10.ph,
          const CustomTextFiled(
            hintT: 'Note Title',
          ),
          40.ph,
          const CustomTextFiled(
            hintT: 'Note content',
            maxLines: 5,
          ),
          const Spacer(),
          ButtonWidget(
            title: 'Add Note',
            width: double.infinity,
            buttonColor: AppColors.darkGrey,
          ),
        ],
      ),
    );
  }
}
