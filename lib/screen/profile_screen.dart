import 'package:day3_200lab_profile_dark_light/model/profile_response.dart';
import 'package:day3_200lab_profile_dark_light/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'profile_header.dart';
import 'profile_info.dart';

class ProfileScreen extends StatelessWidget {

  final ProfileResponse response;

  const ProfileScreen({Key key, this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: _buildProfileUser(context, response),
    );
  }

  Widget _buildProfileUser(BuildContext context, ProfileResponse response) {
    final user = response.results[0];
    final imageUrl = user.picture.large;

    return Column(
      children: <Widget>[
        ProfileHeader(
          image: imageUrl,
          name: '${user.name.first} ${user.name.last}',
          email: user.email,
        ),
        SizedBox(height: SizeConfig.defaultSize),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
          child: Container(
            height: 1,
            color: Theme.of(context).primaryColor,
          ),
        ),
        ProfileInfo(user: user),
      ],
    );
  }
}
