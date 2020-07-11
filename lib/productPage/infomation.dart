//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/globalVariable.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Dual Sense",
            style: TextStyle(
                color: mainTextColor,
                fontSize: 42,
                fontWeight: FontWeight.bold,
                fontFamily: "play"),
          ),
          SizedBox(height: 3,),
          Text(
            "Dual Sence also adds a built-in microphone array, which will anable to easily chat with friends a headset...",
            style: TextStyle(
                color: Color(0x80E8F2FC),
                fontSize: 17,
                fontWeight: FontWeight.bold,
                fontFamily: "roboto"),
          )
        ],
      ),
    );
  }
}
