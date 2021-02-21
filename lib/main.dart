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
    provider.getProfileInfo();
  }

  @override
  Widget build(BuildContext context) {
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
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ProfileScreen(response: snapshot.data);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  void _onPressedChangeTheme() {
    setState(() {
      _isLight = !_isLight;
    });
  }
}
