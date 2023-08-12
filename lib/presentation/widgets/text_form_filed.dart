import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_hive/core/themes/colors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintT, this.maxLines = 1});
  final String hintT;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.darkGrey,
      maxLines: maxLines,
      decoration: InputDecoration(
          border: border(),
          enabledBorder: border(),
          focusedBorder: border(AppColors.darkGrey),
          hintText: hintT,
          hintStyle: TextStyle(color: AppColors.darkGrey)),
    );
  }
}

OutlineInputBorder border([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: color ?? AppColors.white));
}
