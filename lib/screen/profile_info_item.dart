import 'package:day3_200lab_profile_dark_light/utils/size_config.dart';
import 'package:flutter/material.dart';

class ProfileInfoItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onPress;

  const ProfileInfoItem(
      {Key key, this.icon = Icons.email, this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: onPress ?? () {},
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 5, vertical: defaultSize * 2),
        child: Center(
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                color: Theme.of(context).primaryColor,
                size: defaultSize * 2.6,
              ),
              SizedBox(width: defaultSize * 2),
              FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(title,
                      style: Theme.of(context).textTheme.subtitle1)),
            ],
          ),
        ),
      ),
    );
  }
}
