//dart import
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:playstationapp/globalVariable.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
    alignment: Alignment.center,
        children: [
      Container(
        margin: EdgeInsets.fromLTRB(17, 9, 16, 17),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff495879),Color(0xff0C0F12)
            ]
          ),
            borderRadius: BorderRadius.circular(15), color: Color(0xff232A39)),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 17),
        height: 200,
        margin: EdgeInsets.fromLTRB(18, 10, 18, 18),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color(0xaa111111), offset: Offset(7, 8), blurRadius: 10),
          BoxShadow(
              color: Color(0x15AAB2BB), offset: Offset(-7, -8), blurRadius: 20)
        ], borderRadius: BorderRadius.circular(15), color: Color(0xff232A39)),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: BottomNavigationIcon(
                  img: "assets/home.svg",
                  isSelected: true,
                  text: "Home",
                )),
            Expanded(child: BottomNavigationIcon(img: "assets/user.svg")),
            Expanded(child: BottomNavigationIcon(img: "assets/settings.svg")),
            Expanded(child: BottomNavigationIcon(img: "assets/bookmark.svg")),
          ],
        ),
      ),
    ]
    ,
    );
  }
}

// ignore: must_be_immutable
class BottomNavigationIcon extends StatelessWidget {
  String img, text;
  bool isSelected;
  BottomNavigationIcon({
    this.img,
    this.isSelected = false,
    this.text = " ",
  });
  @override
  Widget build(BuildContext context) {
    if (!isSelected) {
      return Container(
        child: WebsafeSvg.asset(img),
      );
    }
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [backLightBlue, backDarkBlue])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          WebsafeSvg.asset(img),
          Text(
            text,
            style: TextStyle(
                color: mainTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 21),
          )
        ],
      ),
    );
  }
}
