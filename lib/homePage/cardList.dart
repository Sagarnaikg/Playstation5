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
      return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return;
        },
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ItemCard(
                  width: width,
                  img: "assets/controllerBlack1.png",
                  imgVer: "assets/controllerBlackVer.png",
                  releaseDate: "Fall 2020",
                  price: "50"),
              ItemCard(
                  width: width,
                  img: "assets/controllerGreen.png",
                  imgVer: "assets/controllerGreenVer.png",
                  releaseDate: "Mid 2020",
                  price: "200"),
              ItemCard(
                  width: width,
                  img: "assets/controllerBlack.png",
                  imgVer: "assets/controllerProduct.png",
                  releaseDate: "End 2020",
                  price: "150"),
              ItemCard(
                  width: width,
                  img: "assets/controllerBlack1.png",
                  imgVer: "assets/controllerBlackVer.png",
                  releaseDate: "Fall 2020",
                  price: "50"),
              ItemCard(
                  width: width,
                  img: "assets/controllerGreen.png",
                  imgVer: "assets/controllerGreenVer.png",
                  releaseDate: "Mid 2020",
                  price: "200"),
              ItemCard(
                  width: width,
                  img: "assets/controllerBlack.png",
                  imgVer: "assets/controllerProduct.png",
                  releaseDate: "End 2020",
                  price: "150"),
            ],
          ),
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
                imgVer: "assets/mouseVer.png",
                releaseDate: "Fall 2020",
                price: "25"),
            ItemCard(
                width: width,
                img: "assets/mouse.png",
                imgVer: "assets/mouseVer.png",
                releaseDate: "Fall 2020",
                price: "25"),
            ItemCard(
                width: width,
                img: "assets/mouse.png",
                imgVer: "assets/mouseVer.png",
                releaseDate: "Fall 2020",
                price: "25"),
            ItemCard(
                width: width,
                img: "assets/mouse.png",
                imgVer: "assets/mouseVer.png",
                releaseDate: "Fall 2020",
                price: "25"),
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
                imgVer: "assets/headsetVer.png",
                releaseDate: "Mid 2020",
                price: "70"),
            ItemCard(
                width: width,
                img: "assets/headset.png",
                imgVer: "assets/headsetVer.png",
                releaseDate: "Mid 2020",
                price: "70"),
            ItemCard(
                width: width,
                img: "assets/headset.png",
                imgVer: "assets/headsetVer.png",
                releaseDate: "Mid 2020",
                price: "70"),
            ItemCard(
                width: width,
                img: "assets/headset.png",
                imgVer: "assets/headsetVer.png",
                releaseDate: "Mid 2020",
                price: "70"),
            ItemCard(
                width: width,
                img: "assets/headset.png",
                imgVer: "assets/headsetVer.png",
                releaseDate: "Mid 2020",
                price: "70"),
          ],
        ),
      );
    }
  }
}

// ignore: must_be_immutable
class ItemCard extends StatelessWidget {
  final double width;
  String img, imgVer, releaseDate, price;

  ItemCard({this.width, this.img, this.imgVer, this.releaseDate, this.price});

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
          Navigator.pushNamed(context, "productPage", arguments: {
            "img": imgVer,
            "releaseDate": releaseDate,
            "price": price
          });
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
