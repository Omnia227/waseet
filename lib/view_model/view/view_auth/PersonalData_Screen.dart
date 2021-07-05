import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/custom_InputFile.dart';
import 'package:waseet/view_model/view/wedgis/custom_ProfilePic.dart';
import 'package:waseet/view_model/view/wedgis/custom_materialButtom.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

class PersonDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
                // we will give media query height
                // double.infinity make it big as my parent allows
                // while MediaQuery make it big as per the screen

                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                    // even space distribution
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        child: ProfilePic(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: <Widget>[
                              CustomText(
                                text: "البيانات الشخصية",
                                color: Primarycolor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InputFile(label: "الاسم"),
                              InputFile(
                                  label: "رقم الهاتف",
                                  keyboardType: TextInputType.phone),
                              InputFile(
                                  label: "الايميل",
                                  keyboardType: TextInputType.emailAddress),
                              InputFile(
                                label: "الموقع",
                              ),
                              InputFile(
                                label: " نوع العميل",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustommaterialButtom(
                                text: "حفظ ",
                                press: () {
                                  Navigator.of(context).pushNamed('Person');
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]))),
      )),
    );
  }
}
