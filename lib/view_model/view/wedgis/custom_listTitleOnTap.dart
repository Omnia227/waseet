import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

class CustomListTileOnTap extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData icon;

  CustomListTileOnTap({
    Key? key,
    this.text = "",
    required this.onTap,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomText(
        text: text,
        fontSize: 16,
        color: Colors.black,
      ),
      leading: Icon(
        icon,
        color: Primarycolor,
      ),
      onTap: onTap,
    );
  }
}