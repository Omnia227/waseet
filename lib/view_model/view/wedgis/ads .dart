import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

import '../../../const.dart';

class Ads extends StatelessWidget {
  final String details;
  final String address;
  final String image;

  Ads({Key? key, this.details = '', this.address = '', this.image = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Primarycolor, //                   <--- border color
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: new DecorationImage(
                  image: ExactAssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomText(
                text: address,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Primarycolor,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomText(
                text: details,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
