import 'package:flutter/material.dart';
import 'package:notes_hive/core/themes/colors.dart';

import '../../../widgets/button_widget.dart';
import '../../../widgets/text_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(
          "Notes",
          color: AppColors.black,
          fontSize: 24,
        ),
        const Spacer(),
        ButtonWidget(
            buttonColor: AppColors.search_Color,
            width: 50,
            child: Icon(
              Icons.search,
              color: AppColors.black,
            )),
      ],
    );
  }
}
