import 'package:flutter/material.dart';

class ContainerIconAndText extends StatelessWidget {
  final IconData icon;
  final String iconText;
  final Function onPressed;

  ContainerIconAndText(
      {@required this.icon, @required this.iconText, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Material(
              shape: CircleBorder(
                side: BorderSide(
                  color: Color(0xff348977),
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  icon,
                  size: 55.0,
                  color: Color(0xff348977),
                ),
              ),
            ),
            Text(
              iconText,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
