import 'package:day3_200lab_profile_dark_light/utils/constants.dart';
import 'package:day3_200lab_profile_dark_light/utils/size_config.dart';

import 'package:flutter/material.dart';

class ProfileInfoItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onPress;

  const ProfileInfoItem({Key key, this.icon = Icons.email, this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 5, vertical: defaultSize * 2),
        child: Center(
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                color: AppColor.kPrimaryColor,
                size: defaultSize * 2.6,
              ),
              SizedBox(width: defaultSize * 2),
              Text(
                title,
                style: TextStyle(
                  fontSize: defaultSize * 1.6, //16
                  color: AppColor.kTextColor,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
