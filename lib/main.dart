import 'package:flutter/material.dart';

import 'screen/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfileScreen(),
    );
  }
}
