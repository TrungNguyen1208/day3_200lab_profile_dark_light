import 'package:day3_200lab_profile_dark_light/model/results.dart';
import 'package:flutter/material.dart';

import 'profile_info_item.dart';
import 'package:intl/intl.dart';

class ProfileInfo extends StatelessWidget {

  final Results user;

  const ProfileInfo({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final email = user.email;
    final phone = user.phone;
    final tempDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(user.dob.date);
    final birthday = DateFormat.yMMMMEEEEd().format(tempDate);

    return Column(
      children: <Widget>[
        ProfileInfoItem(
          icon: Icons.calendar_today_rounded,
          title: birthday,
          onPress: () {},
        ),
        ProfileInfoItem(
          icon: Icons.email,
          title: email,
          onPress: () {},
        ),
        ProfileInfoItem(
          icon: Icons.phone,
          title: phone,
          onPress: () {},
        ),
      ],
    );
  }
}