import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/ads%20.dart';
import 'package:waseet/view_model/view/wedgis/search.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: ListView(children: <Widget>[
        SafeArea(
            child: Container(
                // we will give media query height
                // double.infinity make it big as my parent allows
                // while MediaQuery make it big as per the screen

                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ListView(children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 6,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/assets/images/logo.jpg"))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: <Widget>[
                      Search(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('Login');
                              },
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: ' لخدمات الدفع الإلكتروني ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'اضغط هنا',
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
                  Ads(
                    image: "lib/assets/images/logo.jpg",
                    address: "منتخب السودان يتخطى ليبيا بهدف ويتأهل",
                    details:
                        "  منتخب السودان للمشاركة في بطولة كأس العرب، التي تقام شهر ديسمبر المقبل، بعد الفوز علتأهلخ",
                  ),
                  Ads(
                    image: "lib/assets/images/logo.jpg",
                    address: "منتخب السودان يتخطى ليبيا بهدف ويتأهل",
                    details:
                        "  منتخب السودان للمشاركة في بطولة كأس العرب، التي تقام شهر ديسمبر المقبل، بعد الفوز علتأهلخ",
                  ),
                ]))),
      ])),
    );
  }
}
