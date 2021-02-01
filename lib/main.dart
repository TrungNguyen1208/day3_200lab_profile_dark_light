import 'package:flutter/material.dart';

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

  @override
  void initState() {
    super.initState();
  }

  void _changeTheme() {
    setState(() {
      if (_isLight) {
        _isLight = false;
      } else {
        _isLight = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: _isLight ? AppTheme.lightTheme : AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      home: ProfileScreen(onPressedChangeTheme:_changeTheme),
    );
  }
}

