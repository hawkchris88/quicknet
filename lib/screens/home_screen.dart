import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quicknet/widgets/container_icon_and_text.dart';
import 'airtime_scanner.dart';
import 'package:ussd/ussd.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  Future<void> launchUssd(String ussdCode) async {
    Ussd.runUssd(ussdCode);
  }

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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AirtimeScanner();
                      }));
                    },
                    child: Image.asset('images/scanner.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AirtimeScanner();
                      }));
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
                'SAVE VOUCHER',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 1,
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
                          launchUssd('*124#');
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
//      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Container(
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Image.asset(
//                  'images/scanner.png',
//                  height: 200.0,
//                  width: 200.0,
//                ),
//                Text(
//                  'Scan Voucher',
//                  style: TextStyle(color: Colors.white, fontSize: 30),
//                  textAlign: TextAlign.center,
//                ),
//              ],
//            ),
//            decoration: BoxDecoration(
//                color: Color(0xff348977),
//                borderRadius: BorderRadius.only(
//                    bottomRight: Radius.circular(30.0),
//                    bottomLeft: Radius.circular(30))),
//            height: 300.0,
//          ),
//          Column(
//            children: <Widget>[
//              Text('Quick Actions'),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Icon(Icons.list),
//                  Icon(
//                    Icons.attach_money,
//                    color: Colors.blue,
//                  ),
//                  Icon(Icons.description)
//                ],
//              )
//            ],
//          ),
//        ],
//      ),
    );
  }
}
