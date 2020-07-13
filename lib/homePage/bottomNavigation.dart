//dart import
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:playstationapp/globalVariable.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  List<int> flexList = [2, 1, 1, 1];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        //------------backgound--------------
        CardBackGround(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 17),
          height: 200,
          margin: EdgeInsets.fromLTRB(18, 10, 18, 18),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff232A39)),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: flexList[0],
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                      for (int i = 0; i < 4; i++) {
                        if (i == 0) {
                          flexList[i] = 2;
                        } else {
                          flexList[i] = 1;
                        }
                      }
                    });
                  },
                  child: BottomNavigationIcon(
                    img: "assets/home.svg",
                    text: "Home",
                    index: 0,
                    selectedIndex: selectedIndex,
                  ),
                ),
              ),
              Expanded(
                flex: flexList[1],
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                      for (int i = 0; i < 4; i++) {
                        if (i == 1) {
                          flexList[i] = 2;
                        } else {
                          flexList[i] = 1;
                        }
                      }
                    });
                  },
                  child: Expanded(
                    flex: flexList[1],
                    child: BottomNavigationIcon(
                      img: "assets/user.svg",
                      text: "Account",
                      index: 1,
                      selectedIndex: selectedIndex,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: flexList[2],
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                      for (int i = 0; i < 4; i++) {
                        if (i == 2) {
                          flexList[i] = 2;
                        } else {
                          flexList[i] = 1;
                        }
                      }
                    });
                  },
                  child: Expanded(
                    flex: flexList[2],
                    child: BottomNavigationIcon(
                      img: "assets/settings.svg",
                      text: "Settings",
                      index: 2,
                      selectedIndex: selectedIndex,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: flexList[3],
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                      for (int i = 0; i < 4; i++) {
                        if (i == 3) {
                          flexList[i] = 2;
                        } else {
                          flexList[i] = 1;
                        }
                      }
                    });
                  },
                  child: Expanded(
                    flex: flexList[3],
                    child: BottomNavigationIcon(
                      img: "assets/bookmark.svg",
                      text: "Bookmark",
                      index: 3,
                      selectedIndex: selectedIndex,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//--------------background------------------------
class CardBackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(17, 9, 17, 17),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xaa111111), offset: Offset(7, 8), blurRadius: 10),
            BoxShadow(
                color: Color(0x15AAB2BB),
                offset: Offset(-7, -8),
                blurRadius: 20)
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff495879), Color(0xff0C0F12)]),
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff232A39)),
    );
  }
}

//--------------------actions icons------------------------
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
      return Container(
        child: WebsafeSvg.asset(widget.img),
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
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.selectedIndex = widget.index;
          });
        },
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
