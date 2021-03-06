//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/homePage/topNavigation.dart';

import 'cardList.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          //----------top nav bar------------
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: FilterAction(),
                ),
                TopNavigation(),
              ],
            ),
            flex: 2,
          ),
          //----------item list--------------
          Expanded(
            child: TabBarView(
              children: <Widget>[
                //CardList(name: "console",),
                CardList(
                  name: "console",
                ),
                CardList(
                  name: "headset",
                ),
                CardList(
                  name: "mouse",
                ),
              ],
            ),
            flex: 9,
          ),
        ],
      ),
    );
  }
}
