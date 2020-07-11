//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/globalVariable.dart';

class Heading extends StatelessWidget {
  final double width;
  Heading({this.width});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 15,),
          Text("Featured",
              style: TextStyle(
                fontFamily: "Play",
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: mainTextColor,
              )),
          Text("Products",
              style:TextStyle(
                letterSpacing: 1.5,
                fontFamily:"Bungee",
                fontSize: 34,
                color:Color(0xff97A4B2),

              )) ,
        ],
      ),
    );
  }
}
