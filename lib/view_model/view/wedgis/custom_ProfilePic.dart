import 'package:flutter/material.dart';
import 'package:waseet/const.dart';

class ProfilePic extends StatelessWidget {
  //final AssetImage image;
  const ProfilePic({
    Key? key,
    //      required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        // ignore: deprecated_member_use
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("lib/assets/images/person.png"),
          ),
          Positioned(
              right: -16,
              bottom: 0,
              child: SizedBox(
                height: 46,
                width: 46,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white),
                  ),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {},
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Primarycolor,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
