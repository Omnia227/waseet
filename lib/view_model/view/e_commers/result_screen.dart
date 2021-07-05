import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/Drawer.dart';
import 'package:waseet/view_model/view/wedgis/Result.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            drawer: MyDrawer(),
            appBar: AppBar(
              iconTheme: new IconThemeData(color: Primarycolor),
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Container(
                  height: MediaQuery.of(context).size.height / 20,
                  width: MediaQuery.of(context).size.height / 20,
                  child:
                      Image(image: AssetImage("lib/assets/images/logo.jpg"))),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_shopping_cart),
                  tooltip: 'add shopping',
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            body: SafeArea(
              child: Container(
                // we will give media query height
                // double.infinity make it big as my parent allows
                // while MediaQuery make it big as per the screen

                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.height / 20,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Primarycolor,
                      ),
                      child: TextFormField(
                          onTap: () {},
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: "search ",
                            icon: Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Column(
                      children: [
                        InkWell(
                          child: Result(
                              rdress: "صالة إسبارك سيتي",
                              rimage: 'lib/assets/images/logo.jpg',
                              rsale: "\$63.89",
                              rdetails: "الموقع الخرطوم  بري  شارع عبيد ختم"),
                          onTap: () {
                            Navigator.of(context).pushNamed('Details');
                          },
                        ),
                        InkWell(
                          child: Result(
                              rdress: "صالة إسبارك سيتي",
                              rimage: 'lib/assets/images/logo.jpg',
                              rsale: "\$63.89",
                              rdetails: "الموقع الخرطوم  بري  شارع عبيد ختم"),
                          onTap: () {
                            Navigator.of(context).pushNamed('Details');
                          },
                        ),
                        InkWell(
                          child: Result(
                              rdress: "صالة إسبارك سيتي",
                              rimage: 'lib/assets/images/logo.jpg',
                              rsale: "\$63.89",
                              rdetails: "الموقع الخرطوم  بري  شارع عبيد ختم"),
                          onTap: () {
                            Navigator.of(context).pushNamed('Details');
                          },
                        ),
                        InkWell(
                          child: Result(
                              rdress: "صالة إسبارك سيتي",
                              rimage: 'lib/assets/images/logo.jpg',
                              rsale: "\$63.89",
                              rdetails: "الموقع الخرطوم  بري  شارع عبيد ختم"),
                          onTap: () {
                            Navigator.of(context).pushNamed('Details');
                          },
                        ),
                        InkWell(
                          child: Result(
                              rdress: "صالة إسبارك سيتي",
                              rimage: 'lib/assets/images/logo.jpg',
                              rsale: "\$63.89",
                              rdetails: "الموقع الخرطوم  بري  شارع عبيد ختم"),
                          onTap: () {
                            Navigator.of(context).pushNamed('Details');
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
