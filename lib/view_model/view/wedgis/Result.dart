import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

import '../../../const.dart';

class Result extends StatelessWidget {
  final String rdetails;
  final String rdress;
  final String rimage;
  final String rsale;

  Result(
      {Key? key,
      this.rdetails = '',
      this.rdress = '',
      this.rimage = '',
      this.rsale = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Divider(
        color: Primarycolor,
      ),
      Container(
        // padding: const EdgeInsets.only(top: 10, bottom: 10),
        //margin: const EdgeInsets.only(bottom: 10),
        height: MediaQuery.of(context).size.height / 6,
        // 100,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.height / 6,
              child: Image.asset(
                rimage,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10, bottom: 10),
                      child: Text(
                        rdress,
                        style: TextStyle(
                            color: Primarycolor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10, bottom: 10),
                      child: Icon(
                        Icons.check,
                        color: Primarycolor,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.height / 4,
                  alignment: Alignment.topRight,
                  child: Text(
                    rdetails,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(
                right: 20,
              ),
              child: Text(
                rsale,
                style: TextStyle(
                  color: Primarycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
      Divider(
        color: Primarycolor,
      ),
    ]);
  }
}
