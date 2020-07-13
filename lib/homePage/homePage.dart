//dart import
import 'package:flutter/material.dart';
//local import
import 'package:playstationapp/homePage/backGround.dart';
import 'appbar.dart';
import 'bottomNavigation.dart';
import 'heading.dart';
import "package:playstationapp/homePage/productField.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          //---------background---------
          BackGround(
            width: width,
            height: height,
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                //-----------app bar------------
                Expanded(
                  child: NavBar(),
                  flex: 1,
                ),
                //----------Heading -------------
                Expanded(
                  child: Heading(width: width),
                  flex: 2,
                ),
                //----------product filed-----------
                Expanded(flex: 11, child: Product()),
                //----------bottom bar--------------
                Expanded(
                  child: BottomNavigation(),
                  flex: 2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
