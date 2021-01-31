import 'package:day3_200lab_profile_dark_light/utils/constants.dart';
import 'package:day3_200lab_profile_dark_light/utils/size_config.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name, email, image;

  const ProfileHeader({Key key, this.name, this.email, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 24, // 240
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: defaultSize * 15, //150
              color: AppColor.kPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: defaultSize),
                  height: defaultSize * 14, //140
                  width: defaultSize * 14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: defaultSize * 0.5,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(image),
                      )),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: defaultSize * 2.2, // 22
                    color: AppColor.kTextColor,
                  ),
                ),
                SizedBox(height: defaultSize / 2),
                Text(
                  email,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8492A2),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    final height = size.height;
    final width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
