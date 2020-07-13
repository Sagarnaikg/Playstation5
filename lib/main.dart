//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/homePage/homePage.dart';
import 'package:flutter/services.dart';
//local imports
import 'package:playstationapp/productPage/productPage.dart';
//external imports

void main() {
  runApp(MyApp());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Color(0xff151A20),
    systemNavigationBarDividerColor: Color(0xff151A20),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/": (context) => HomePage(),
        "productPage": (context) => ProductPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
