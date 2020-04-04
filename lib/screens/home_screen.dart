import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quicknet/widgets/container_icon_and_text.dart';

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
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            color: Color(0xff348977),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      //do something
                    },
                    child: CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage('images/scanner.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //do something
                    },
                    child: Text(
                      'Use Voucher',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            width: double.infinity,
            child: RaisedButton(
              onPressed: () {
                //do something
              },
              color: Color(0xff348977),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                ''
                'SAVE VOUCHER',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ContainerIconAndText(
                        icon: Icons.format_list_numbered,
                        iconText: 'Short Codes',
                        onPressed: () {
                          //do something
                        },
                      ),
                      ContainerIconAndText(
                        iconText: 'Check Balance',
                        icon: Icons.account_balance_wallet,
                        onPressed: () {
                          //do something
                        },
                      ),
                      ContainerIconAndText(
                        iconText: 'Saved Voucher',
                        icon: Icons.insert_drive_file,
                        onPressed: () {
                          //do something
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ContainerIconAndText(
                        iconText: 'History',
                        icon: Icons.history,
                        onPressed: () {
                          //do something
                        },
                      ),
                      ContainerIconAndText(
                        iconText: 'Invite Friends',
                        icon: Icons.group_add,
                        onPressed: () {
                          //do something
                        },
                      ),
                      ContainerIconAndText(
                        iconText: 'Wallpapers',
                        icon: Icons.wallpaper,
                        onPressed: () {
                          //do something
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45.0,
                  width: double.infinity,
                  color: Color(0xff348977),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
