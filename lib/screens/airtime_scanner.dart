import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:ussd/ussd.dart';

class AirtimeScanner extends StatefulWidget {
  @override
  _AirtimeScannerState createState() => _AirtimeScannerState();
}

class _AirtimeScannerState extends State<AirtimeScanner> {
  String realAirtime;
  int ussdAirtime;
  void getImage() async {
    final airtimeImage =
        await ImagePicker.pickImage(source: ImageSource.camera);
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
    ussdAirtime = int.parse(realAirtime.trim());
    if (airtime != null) {
      launchUssd('*134*$airtime#');
    }
    setState(() {});
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
      body: Container(
        child: Center(
          child: Text('${ussdAirtime ?? 'click on the scanner button'} done'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImage();
        },
        tooltip: 'Scan airtime',
        child: Icon(
          Icons.scanner,
        ),
      ),
    );
  }
}
