import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/custom_InputFile.dart';
import 'package:waseet/view_model/view/wedgis/custom_materialButtom.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

class ForgotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Primarycolor,
          ),
          body: SingleChildScrollView(
            child: SafeArea(
                child: Container(
                    // we will give media query height
                    // double.infinity make it big as my parent allows
                    // while MediaQuery make it big as per the screen

                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    child: Column(
                        // even space distribution
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height / 8,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "lib/assets/images/logo.jpg"))),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: <Widget>[
                                CustomText(
                                  text:
                                      "ادخل رقم الهاتف و سيتم إرسال إعادة تعيين كلمة المرور إلى هاتفك ",
                                  fontSize: 15,
                                  color: Primarycolor,
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                InputFile(
                                    label: "رقم الهاتف",
                                    keyboardType: TextInputType.phone),
                                SizedBox(
                                  height: 10,
                                ),
                                CustommaterialButtom(
                                  text: "ارسال",
                                  press: () {
                                    Navigator.of(context).pushNamed('Forgot');
                                  },
                                ),
                                SizedBox(
                                  height: 180,
                                )
                              ],
                            ),
                          ),
                        ]))),
          )),
    );
  }
}
