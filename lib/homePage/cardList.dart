//dart import
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:playstationapp/globalVariable.dart';

// ignore: must_be_immutable
class CardList extends StatelessWidget {
  String name;

  CardList({this.name});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (name == "console") {
      return Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(
              width: width,
              img: "assets/controllerBlack1.png",
            ),
            ItemCard(
              width: width,
              img: "assets/controllerGreen.png",
            ),
            ItemCard(
              width: width,
              img: "assets/controllerBlack.png",
            ),
            ItemCard(
              width: width,
              img: "assets/controllerBlack1.png",
            ),
            ItemCard(
              width: width,
              img: "assets/controllerGreen.png",
            ),
            ItemCard(
              width: width,
              img: "assets/controllerBlack.png",
            ),
          ],
        ),
      );
    } else if (name == "mouse") {
      return Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(
              width: width,
              img: "assets/mouse.png",
            ),
            ItemCard(
              width: width,
              img: "assets/mouse1.png",
            ),
            ItemCard(
              width: width,
              img: "assets/mouse2.png",
            ),
            ItemCard(
              width: width,
              img: "assets/mouse.png",
            ),
            ItemCard(
              width: width,
              img: "assets/mouse1.png",
            ),
            ItemCard(
              width: width,
              img: "assets/mouse2.png",
            ),
          ],
        ),
      );
    } else if (name == "headset") {
      return Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(
              width: width,
              img: "assets/headset.png",
            ),
            ItemCard(
              width: width,
              img: "assets/headset.png",
            ),
            ItemCard(
              width: width,
              img: "assets/headset.png",
            ),
            ItemCard(
              width: width,
              img: "assets/headset.png",
            ),
          ],
        ),
      );
    }
  }
}

// ignore: must_be_immutable
class ItemCard extends StatelessWidget {
  final double width;
  String img;

  ItemCard({this.width, this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 40, 20, 71),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xaa111111),
                offset: Offset(11, 13),
                blurRadius: 20)
          ],
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff2D3648), Color(0xff1D232A)])),
      width: width * 0.65,
      child: FlatButton(
        splashColor: Color(0x15111111),
        highlightColor: Colors.transparent,
        onPressed: () {
          Navigator.pushNamed(context, "productPage");
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                alignment: Alignment.topRight,
                child: Image(
                  image: AssetImage("assets/playStationLogo.png"),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Image(
                  image: AssetImage(img),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dual Sense",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: mainTextColor,
                        fontFamily: "Play",
                        fontSize: 32,
                      )),
                  SizedBox(
                    height: 7,
                  ),
                  Text("Official PSS controller",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: subTextClr,
                        fontFamily: "Roboto",
                        fontSize: 16,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
