import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  final double fontSize;

  final Color color;

  final Alignment alignment;
  final FontWeight fontWeight;

  //final int maxLine;
  final double height;

  CustomText({
    Key? key,
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topRight,
    this.fontWeight = FontWeight.normal,
    //this.maxLine,
    this.height = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          height: height,
          fontSize: fontSize,
        ),
        // maxLines: maxLine,
      ),
    );
  }
}
