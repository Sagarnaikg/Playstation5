//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/homePage/homePage.dart';
//local imports
import 'package:playstationapp/productPage/productPage.dart';
//external imports

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/":(context)=> HomePage(),
        "productPage":(context)=> ProductPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}







