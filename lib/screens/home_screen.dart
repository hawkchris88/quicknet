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
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {
              //do something
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              //do something
            },
          ),
        ],
      ),
    );
  }
}
