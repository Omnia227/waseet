import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waseet/const.dart';

class InputFile extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final Alignment alignment;
  final obscureText;

  InputFile({
    Key? key,
    this.label = "",
    this.keyboardType = TextInputType.text,
    this.alignment = Alignment.topRight,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        TextField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
              labelText: label,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Primarycolor),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Primarycolor))),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
