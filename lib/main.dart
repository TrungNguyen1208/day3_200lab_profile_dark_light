import 'package:flutter/material.dart';

import 'model/profile_response.dart';
import 'provider/profile_provider.dart';
import 'screen/profile_screen.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(DarkLightTheme());
}

class DarkLightTheme extends StatefulWidget {
  @override
  _DarkLightThemeState createState() => _DarkLightThemeState();
}

class _DarkLightThemeState extends State<DarkLightTheme> {

  bool _isLight = true;
  final provider = ProfileProvider();

  @override
  Widget build(BuildContext context) {
    provider.getProfileInfo();
    print('build DarkLightThemeState');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: _isLight ? AppTheme.lightTheme : AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      home: Scaffold(
        appBar: _buildAppBar(),
        body: _buildContent(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: SizedBox(),
      title: Text('Profile', style: Theme.of(context).textTheme.headline6),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.wb_sunny, color: Colors.white),
          onPressed: _onPressedChangeTheme,
        ),
      ],
    );
  }

  Widget _buildContent() {
    return StreamBuilder(
      stream: provider.profileStream,
      builder: (BuildContext context, AsyncSnapshot<ProfileResponse> snapshot) {
        if (snapshot.hasData) {
          print('hasData');
          return ProfileScreen(response: snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  void _onPressedChangeTheme() {
    setState(() {
      _isLight = !_isLight;
    });
  }
}

