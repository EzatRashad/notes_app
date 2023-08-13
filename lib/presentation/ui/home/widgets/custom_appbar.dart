import 'package:flutter/material.dart';
import 'package:notes_hive/core/themes/colors.dart';

import '../../../widgets/button_widget.dart';
import '../../../widgets/text_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, this.icon, this.onTap, this.color});
  final String title;
  final IconData? icon;
  final void Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(
          title,
          fontFamily: 'Caprasimo',
          color: AppColors.black,
          fontSize: 24,
        ),
        const Spacer(),
        ButtonWidget(
            onTap: onTap,
            buttonColor: color!,
            width: 50,
            child: Icon(
              icon,
              color: AppColors.black,
            )),
      ],
    );
  }
}
