import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/custom_InputFile.dart';
import 'package:waseet/view_model/view/wedgis/custom_materialButtom.dart';

class SignUpnScreen extends StatelessWidget {
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
                        height: MediaQuery.of(context).size.height / 8,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("lib/assets/images/logo.jpg"))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: <Widget>[
                              InputFile(label: "الاسم"),
                              InputFile(
                                  label: "رقم الهاتف",
                                  keyboardType: TextInputType.phone),
                              InputFile(
                                  label: "كلمة المرور",
                                  keyboardType: TextInputType.visiblePassword
                                  // obscureText: true
                                  ),
                              InputFile(
                                  label: " تاكيد كلمة المرور ",
                                  keyboardType: TextInputType.visiblePassword
                                  // obscureText: true
                                  ),
                              InputFile(
                                label: " نوع العميل",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustommaterialButtom(
                                text: "تسجيل ",
                                press: () {
                                  Navigator.of(context).pushNamed('Login');
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('Login');
                                      },
                                      child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: 'هل لديك حساب مسبق؟  ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'تسجيل الدخول',
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
                      ),
                    ]))),
      )),
    );
  }
}
