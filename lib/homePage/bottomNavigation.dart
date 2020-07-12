//dart import
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:playstationapp/globalVariable.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  int selectedIndex = 0;

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
                  colors: [Color(0xff495879), Color(0xff0C0F12)]),
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff232A39)),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 17),
          height: 200,
          margin: EdgeInsets.fromLTRB(18, 10, 18, 18),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Color(0xaa111111), offset: Offset(7, 8), blurRadius: 10),
            BoxShadow(
                color: Color(0x15AAB2BB),
                offset: Offset(-7, -8),
                blurRadius: 20)
          ], borderRadius: BorderRadius.circular(15), color: Color(0xff232A39)),
          child: Row(
            children: <Widget>[
              BottomNavigationIcon(
                img: "assets/home.svg",
                text: "Home",
                index: 0,
                selectedIndex: selectedIndex,
              ),
              BottomNavigationIcon(
                img: "assets/user.svg",
                text: "Account",
                index: 1,
                selectedIndex: selectedIndex,
              ),
              BottomNavigationIcon(
                img: "assets/settings.svg",
                text: "Settings",
                index: 2,
                selectedIndex: selectedIndex,
              ),
              BottomNavigationIcon(
                img: "assets/bookmark.svg",
                text: "Bookmark",
                index: 3,
                selectedIndex: selectedIndex,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class BottomNavigationIcon extends StatefulWidget {
  String img, text;
  int index, selectedIndex;
  BottomNavigationIcon({this.img, this.text, this.index, this.selectedIndex});

  @override
  _BottomNavigationIconState createState() => _BottomNavigationIconState();
}

class _BottomNavigationIconState extends State<BottomNavigationIcon> {
  @override
  Widget build(BuildContext context) {
    if (widget.index != widget.selectedIndex) {
      return Expanded(
        flex: 1,
        child: Container(
          child: WebsafeSvg.asset(widget.img),
        ),
      );
    }
    return Expanded(
      flex: 2,
      child: Container(
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
            WebsafeSvg.asset(widget.img),
            Text(
              widget.text,
              style: TextStyle(
                  color: mainTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
