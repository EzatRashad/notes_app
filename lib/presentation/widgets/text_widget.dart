import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String? title;
  final double? fontSize;
  final double? height;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool isOffer;
  final String? fontFamily;
  final TextOverflow? overflow;

  // ignore: use_key_in_widget_constructors
  const TextWidget(this.title,
      {this.fontSize,
      this.fontFamily,
      this.overflow,
      this.fontWeight,
      this.maxLines,
      this.color,
      this.textAlign,
      this.isOffer = false,
      this.height});

  @override
  Widget build(BuildContext context) {
    // print(Utils.lang);
    return Text(
      title ?? "",
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: fontFamily??'poppins',
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight,
        decoration: isOffer ? TextDecoration.underline : null,
        height: height ?? 1.5,
        color: color ?? Theme.of(context).textTheme.bodyText1!.color,
        // letterSpacing: 1
      ),
      textAlign: textAlign,
    );
  }
}
