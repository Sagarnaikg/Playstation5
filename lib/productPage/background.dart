//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/globalVariable.dart';

class BackGround extends StatelessWidget {
  final width;
  final height;

  BackGround({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      tileMode: TileMode.repeated,
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        backDark,backLightDark
                      ]
                  )
              ),
            )
          ],
        ),
        Positioned(
            top: 0,
            width: width ,
            height: height * 0.45,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        backDarkBlue,backLightBlue
                      ]
                  )
              ),
            )
        )
      ],
    );
  }
}