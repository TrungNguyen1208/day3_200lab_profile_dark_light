import 'package:day3_200lab_profile_dark_light/model/profile_response.dart';
import 'package:day3_200lab_profile_dark_light/provider/profile_provider.dart';
import 'package:day3_200lab_profile_dark_light/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'profile_header.dart';
import 'profile_info.dart';

class ProfileScreen extends StatefulWidget {

  final Function onPressedChangeTheme;

  const ProfileScreen({Key key, this.onPressedChangeTheme}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final provider = ProfileProvider();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    print('render build');

    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return FutureBuilder(
      future: provider.getProfileInfo(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print('hasData');
          return _buildProfileUser(snapshot.data);
        } else {
          return Container(
            height: 600,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  Widget _buildProfileUser(ProfileResponse response) {
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

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      leading: SizedBox(),
      centerTitle: true,
      title: Text('Profile', style: Theme.of(context).textTheme.headline6),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: IconButton(
            icon: Icon(Icons.wb_sunny, color: Colors.white),
            onPressed: widget.onPressedChangeTheme,
          ),
        ),
      ],
    );
  }
}
