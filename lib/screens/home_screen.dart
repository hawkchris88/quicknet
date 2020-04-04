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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/scanner.png',
                  height: 200.0,
                  width: 200.0,
                ),
                Text(
                  'Scan Voucher',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Color(0xff348977),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30))),
            height: 300.0,
          ),
          Column(
            children: <Widget>[
              Text('Quick Actions'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.list),
                  Icon(
                    Icons.attach_money,
                    color: Colors.blue,
                  ),
                  Icon(Icons.description)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
