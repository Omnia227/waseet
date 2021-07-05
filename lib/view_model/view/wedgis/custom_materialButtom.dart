import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'custom_text.dart';

class CustommaterialButtom extends StatelessWidget {
  final String text;
  final VoidCallback press;

  CustommaterialButtom({
    Key? key,
    this.text = "",
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 60,
      onPressed: press,
      color: Primarycolor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: CustomText(
          text: text,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          alignment: Alignment.center),
    );
  }
}
