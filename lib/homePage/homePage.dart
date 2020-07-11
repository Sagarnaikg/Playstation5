//dart import
import 'package:flutter/material.dart';
//local import
import 'package:playstationapp/homePage/backGround.dart';
import 'package:playstationapp/homePage/topNavigation.dart';
import 'appbar.dart';
import 'bottomNavigation.dart';
import 'cardList.dart';
import 'heading.dart';


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
                SizedBox(
                  height: 7,
                ),
                //-----------app bar------------
                Expanded(child: NavBar(),flex: 1,),
                //----------Heading -------------
                Expanded(child: Heading(width:width),flex: 2,),
                //----------top nav bar------------
                Expanded(child: TopNavigation(),flex: 2,),
                //----------item list--------------
                Expanded(child: CardList(),flex: 9,),
                //----------bottom bar--------------
                Expanded(child: BottomNavigation(),flex: 2,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}


