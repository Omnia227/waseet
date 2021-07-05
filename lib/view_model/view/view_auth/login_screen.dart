import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/custom_InputFile.dart';
import 'package:waseet/view_model/view/wedgis/custom_flatButton.dart';
import 'package:waseet/view_model/view/wedgis/custom_materialButtom.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

class LoginScreen extends StatelessWidget {
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
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("lib/assets/images/logo.jpg"))),
                      ),
                      Container(
                        child: CustomText(
                            text: "مرحبا بك",
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            alignment: Alignment.center),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            InputFile(
                              label: "الاسم",
                            ),
                            InputFile(
                                label: "كلمة المرور",
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                CustomFlatButton(
                                  text: " هل نسيت كلمة المرور؟",
                                  press: () {
                                    Navigator.of(context).pushNamed('Forgot');
                                  },
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustommaterialButtom(
                              text: "تسجيل الدخول",
                              press: () {
                                Navigator.of(context).pushNamed('Person');
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 20, bottom: 60),
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('SignUp');
                                    },
                                    child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: 'ليس لديك حساب؟ ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'اشترك',
                                          style: TextStyle(
                                            color: Primarycolor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]))),
      )),
    );
  }
}
