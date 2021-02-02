import 'package:flutter/material.dart';

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
  void initState() {
    super.initState();
  }

  void _changeTheme() {
    setState(() {
      _isLight = !_isLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: _isLight ? AppTheme.lightTheme : AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      home: _buildContent(),
    );
  }

  Widget _buildContent() {
    return FutureBuilder(
      future: provider.getProfileInfo(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print('hasData');
          return ProfileScreen(response: snapshot.data, onPressedChangeTheme:_changeTheme);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

