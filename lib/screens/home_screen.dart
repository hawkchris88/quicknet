import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airtime LoadUp'),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.help),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
