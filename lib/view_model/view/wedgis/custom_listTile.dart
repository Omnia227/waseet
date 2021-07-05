import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final IconData icon;

  CustomListTile({
    Key? key,
    this.text = "",
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
    );
  }
}
