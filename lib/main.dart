import 'package:flutter/material.dart';
import 'package:quicknet/screens/home_screen.dart';
import 'screens/airtime_scanner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'quick net',
      theme: ThemeData(primaryColor: Color(0xff348977)),
      home: HomeScreen(),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Row(
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: <Widget>[
//          Expanded(
//            child: Container(
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: <Widget>[
//                  Image.asset(
//                    'images/scanner.png',
//                    height: 200.0,
//                    width: 200.0,
//                  ),
//                  Text('Scan Voucher'),
//                ],
//              ),
//              decoration: BoxDecoration(
//                  color: Color(0xff348977),
//                  borderRadius: BorderRadius.only(
//                      bottomRight: Radius.circular(30.0),
//                      bottomLeft: Radius.circular(30))),
//              height: 300.0,
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
