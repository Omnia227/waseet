import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/Drawer.dart';
import 'package:waseet/view_model/view/wedgis/custom_ProfilePic.dart';
import 'package:waseet/view_model/view/wedgis/custom_listTile.dart';
import 'package:waseet/view_model/view/wedgis/custom_text.dart';

class PersonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Primarycolor,
          ),
          drawer: MyDrawer(),
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
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: CustomText(
                              text: "البيانات الشخصية",
                              color: Primarycolor,
                              fontSize: 18,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 20,
                                child: Column(
                                  children: <Widget>[
                                    CustomListTile(
                                        text: "امنية عبد الحفيظ",
                                        icon: Icons.person_sharp),
                                    CustomListTile(
                                        text: "Omniaabd@gmail.com",
                                        icon: Icons.email),
                                    CustomListTile(
                                        text: "0024920069502",
                                        icon: Icons.phone),
                                    CustomListTile(
                                        text: "الشهيد طه الماحي",
                                        icon: Icons.location_on),
                                    CustomListTile(
                                        text: "وسيط",
                                        icon: Icons.theater_comedy_sharp),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: FloatingActionButton(
                                        backgroundColor: Primarycolor,
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed('PersonData');
                                        },
                                        tooltip: 'Increment',
                                        child: Icon(Icons.edit),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]))),
          )),
    );
  }
}
