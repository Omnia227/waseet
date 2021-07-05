import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  CustomFlatButton({
    Key? key,
    this.text = "",
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: deprecated_member_use
      child: FlatButton(
          onPressed: press,
          child: CustomText(
            text: text,
            fontSize: 16,
            color: Colors.grey,
          )),
    );
  }
}
