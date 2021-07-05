import 'package:flutter/material.dart';
import 'package:waseet/const.dart';
import 'package:waseet/view_model/view/wedgis/custom_listTitleOnTap.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("امنية عبد الحفيظ "),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black12,
              child: Icon(Icons.person),
            ),
            decoration: BoxDecoration(color: Primarycolor),
            accountEmail: null,
          ),
          CustomListTileOnTap(
            text: "الصفحة الرئيسة",
            icon: Icons.home,
            onTap: () {
              Navigator.of(context).pushNamed('Home');
            },
          ),
          CustomListTileOnTap(
            text: "البيانات الشخصية",
            icon: Icons.person,
            onTap: () {
              Navigator.of(context).pushNamed('Person');
            },
          ),
          CustomListTileOnTap(
            text: "عن التطبيق",
            icon: Icons.info,
            onTap: () {
              Navigator.of(context).pushNamed('About the application');
            },
          ),
          CustomListTileOnTap(
            text: "خروج",
            icon: Icons.exit_to_app,
            onTap: () {
              Navigator.of(context).pushNamed('sign out');
            },
          ),
        ],
      ),
    );
  }
}
