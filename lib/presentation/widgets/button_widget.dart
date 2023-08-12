import 'package:flutter/material.dart';
import 'package:notes_hive/core/themes/colors.dart';
import 'package:notes_hive/presentation/widgets/text_widget.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String title;
  double width, height, radius;
  Widget? child;
  Gradient? gradient;
  double? fontSize;
  FontWeight? fontweight;
  var alignment;
  Color textColor, buttonColor, borderColor;
  void Function()? onTap;
  bool withBorder;

  ButtonWidget(
      {Key? key,
      this.gradient,
      this.title = "OK",
      this.width = 45,
      this.height = 50.0,
      this.onTap,
      this.child,
      this.fontSize,
      this.fontweight,
      this.alignment,
      this.textColor = Colors.white,
      this.buttonColor = Colors.transparent,
      this.borderColor = Colors.black87,
      this.withBorder = false,
      this.radius = 20.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                    side: withBorder
                        ? BorderSide(color: borderColor)
                        : const BorderSide(color: Colors.transparent)))),
        child: Align(
          alignment: alignment ?? Alignment.center,
          child: child ??
              TextWidget(
                fontWeight: fontweight ?? FontWeight.w600,
                title,
                fontSize: fontSize ?? 16,
                color: textColor,
              ),
        ),
      ),
    );
  }
}

class MyTextButton extends StatelessWidget {
  MyTextButton({
    super.key,
    required this.function,
    required this.text,
    this.color,
    this.size,
  });
  Function function;
  String text;
  double? size;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        function();
      },
      child: TextWidget(text,
          fontSize: size ?? 12,
          color: color ?? Colors.white,
          fontWeight: FontWeight.w500
          //  style: TextStyle(color: AppColors.secondary),
          ),
      // style: TextButton.styleFrom(
      //   elevation: 0,
      //   textStyle: TextStyle(
      //     fontWeight: FontWeight.w600,
      //     fontSize: (width <= 550) ? 13 : 17,
      //   ),
      // ),
    );
  }
}
