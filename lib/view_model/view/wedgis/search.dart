import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

import '../../../const.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.height / 2.6,
          padding: const EdgeInsets.only(left: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
                labelText: "ابحث",
                // icon: Icon(Icons.search_rounded),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Primarycolor),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Primarycolor))),
          ),
        ),
        MaterialButton(
          height: 60,
          onPressed: () {
            Navigator.of(context).pushNamed('Result');
          },
          color: Primarycolor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: CustomText(
              text: "بحث",
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              alignment: Alignment.center),
        )
      ],
    );
  }
}
