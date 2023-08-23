import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_hive/core/themes/colors.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {super.key,
       this.hintT,
      this.maxLines = 1,
      this.onsaved,
      this.onChange,  this.tc});
  final String? hintT;
  final int maxLines;
  void Function(String?)? onsaved;
  final Function(String)? onChange;
  TextEditingController? tc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: tc,
      cursorColor: AppColors.darkGrey,
      maxLines: maxLines,
      onSaved: onsaved,
      onChanged: onChange,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this filed is required';
        }
        return null;
      },
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
