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
          right: 0,
          top: 0,
          width: width * 0.4,
          height: height * 0.85,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
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
