import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  final String text;

  final double fontSize;

  final Color color;

  final Alignment alignment;
  final FontWeight fontWeight;

  //final int maxLine;
  final double height;

  CustomTextSpan({
    this.text = "",
    this.fontSize = 12,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.fontWeight = FontWeight.w400,
    //this.maxLine,
    this.height = 1,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      onPressed: () {},
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: text,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ]),
      ),
    );
  }
}
