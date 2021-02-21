import 'package:day3_200lab_profile_dark_light/model/results.dart';
import 'package:flutter/material.dart';
import 'profile_info_item.dart';

class ProfileInfo extends StatelessWidget {

  final Results user;

  const ProfileInfo({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final email = user.email;
    final phone = user.phone;
    final birthday = user.birthday;

    return Column(
      children: <Widget>[
        ProfileInfoItem(
          icon: Icons.calendar_today_rounded,
          title: birthday,
        ),
        ProfileInfoItem(
          icon: Icons.email,
          title: email,
        ),
        ProfileInfoItem(
          icon: Icons.phone,
          title: phone,
        ),
      ],
    );
  }
}