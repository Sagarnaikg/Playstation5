//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/globalVariable.dart';
import 'package:websafe_svg/websafe_svg.dart';

// ignore: must_be_immutable
class Product extends StatefulWidget {
  String img, releaseDate, price;
  Product({this.img, this.releaseDate, this.price});
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final double mainTextSize = 19, subTextSize = 18;

  Color subClr = Color(0xccD7E3EE);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 18,
          ),
          Expanded(
            flex: 9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "PLAYSTATION",
                      style: TextStyle(
                          fontSize: mainTextSize,
                          color: Color(0xffE7F3FF),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "PS5",
                      style: TextStyle(
                          fontSize: subTextSize,
                          color: subClr /*Color(0xaa6E3EF)*/,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "RELEASE",
                      style: TextStyle(
                          fontSize: mainTextSize,
                          color: Color(0xffE7F3FF),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.releaseDate,
                      style: TextStyle(
                          fontSize: subTextSize,
                          color: subClr /*Color(0xaa6E3EF)*/,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "PRICE",
                      style: TextStyle(
                          fontSize: mainTextSize,
                          color: Color(0xffE7F3FF),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$ ${widget.price}",
                      style: TextStyle(
                          fontSize: subTextSize,
                          color: subClr /*Color(0xaa6E3EF)*/,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                MenuIcon(
                  image: "assets/bookmarkOuter.svg",
                  width: 19,
                  height: 19,
                  gradLight: Color(0xff2D3548),
                  gradDark: Color(0xff181D25),
                  shadowDark: Color(0xcc0A0D11),
                  gradInnerLight: Color(0xff2D3548),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              height: height * 0.35,
              child: Stack(
                children: [
                  Image.asset(
                    widget.img,
                    height: height * 0.5,
                    color: Colors.black,
                  ),
                  Image.asset(
                    widget.img,
                    height: height * 0.5,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {
  final double width, height;
  final String image;
  final Color shadowDark, gradLight, gradDark, gradInnerLight;

  MenuIcon(
      {this.image,
      this.height,
      this.width,
      this.gradLight,
      this.gradDark,
      this.shadowDark,
      this.gradInnerLight});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: shadowDark,
                blurRadius: 20,
                spreadRadius: 2,
                offset: Offset(7, 7))
          ],
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [gradDark, gradLight]),
        ),
      ),
      Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [gradInnerLight, backDark])),
      ),
      WebsafeSvg.asset(image, width: width, height: height)
    ]);
  }
}
