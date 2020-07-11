//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/globalVariable.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        splashColor: Colors.transparent,
        padding: EdgeInsets.all(0),
        alignment: Alignment.centerLeft,
        icon: WebsafeSvg.asset("assets/arrowRight.svg"),
      ),
      trailing: MenuIcon(
        image: "assets/shoppingcart.svg",
        width: 21,
        height: 21,
        gradLight: backLightBlue,
        gradDark: backDarkBlue,
        shadowLight: backLightBlue,
        shadowDark: backDarkBlue,
        gradInnerLight: Color(0xff424B5E),
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {
  final double width, height;
  final String image;
  final Color shadowLight, shadowDark, gradLight, gradDark, gradInnerLight;

  MenuIcon(
      {this.image,
        this.height,
        this.width,
        this.gradLight,
        this.gradDark,
        this.shadowLight,
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
                color: shadowLight,
                blurRadius: 16,
                spreadRadius: 2,
                offset: Offset(-7, -7)),
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
      WebsafeSvg.asset(image,width: width,height: height)
    ]);
  }
}
