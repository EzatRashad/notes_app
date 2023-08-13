import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_hive/core/utiles/utiles.dart';
import 'package:notes_hive/presentation/ui/home/widgets/custom_appbar.dart';

import '../../../core/themes/colors.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_form_filed.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

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
                hintT: 'Note Title',
              ),
              40.ph,
               CustomTextFiled(
                hintT: 'Note content',
                maxLines: 5,
              ),
              100.ph,
              ButtonWidget(
                title: 'Done',
                width: double.infinity,
                buttonColor: AppColors.darkGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
