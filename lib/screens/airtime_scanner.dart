import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:ussd/ussd.dart';

class AirtimeScanner extends StatefulWidget {
  @override
  _AirtimeScannerState createState() => _AirtimeScannerState();
}

class _AirtimeScannerState extends State<AirtimeScanner> {
  @override
  void initState() {
    // TODO: implement initState
    getImage();
    print('i run');
  }

  String realAirtime;
  int ussdAirtime;
  TextEditingController controller = TextEditingController();
  void getImage() async {
    final airtimeImage =
        await ImagePicker.pickImage(source: ImageSource.gallery);
    final airtime = FirebaseVisionImage.fromFile(airtimeImage);
    final airtimeDetector = FirebaseVision.instance.textRecognizer();
    final result = await airtimeDetector.processImage(airtime);
    String text = result.text;
    for (TextBlock block in result.blocks) {
      final Rect boundingBox = block.boundingBox;
      final List<Offset> cornerPoints = block.cornerPoints;
      final String text = block.text;
      final List<RecognizedLanguage> languages = block.recognizedLanguages;

      for (TextLine line in block.lines) {
        // Same getters as TextBlock
        for (TextElement element in line.elements) {
          if (element.text.trim().length == 14 ||
              element.text.trim().length == 16) {
            realAirtime = element.text.trim().toString();
          }
        }
      }
    }

    airtimeDetector.close();

    controller.text = realAirtime;
//    setState(() {});
  }

  Future<void> launchUssd(String ussdCode) async {
    Ussd.runUssd(ussdCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airtime Scanner'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Edit Voucher Code',
                filled: true,
              ),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  color: Color(0xff348977),
                  child: Text('Load'),
                  onPressed: () {
                    ussdAirtime = int.parse(realAirtime.trim());
                    if (ussdAirtime != null) {
                      launchUssd('*134*$ussdAirtime#');
                    }
                    controller.clear();
                    Navigator.pop(context);
                  },
                  elevation: 5,
                )
              ],
            )
          ],
        ),
//          child: Text('${ussdAirtime ?? 'click on the scanner button'} '),
      ),
    );
  }
}
