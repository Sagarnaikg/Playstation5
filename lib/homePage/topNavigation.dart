//dart import
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class TopNavigation extends StatefulWidget {
  @override
  _TopNavigationState createState() => _TopNavigationState();
}

class _TopNavigationState extends State<TopNavigation> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavigatorCard(
              image: "assets/options.svg",
              width: width * 0.15,
              height: height,
              pading: 17,
            ),
            NavigatorCard(
              image: "assets/games.svg",
              width: width * 0.15,
              height: height,
              pading: 13,
              gradLight: Color(0xff3B9FE8),
              gradDark: Color(0xff414ED7),
            ),
            NavigatorCard(
              image: "assets/headset.svg",
              width: width * 0.15,
              height: height,
              pading: 16,
            ),
            NavigatorCard(
              image: "assets/mouse.svg",
              width: width * 0.15,
              height: height,
              pading: 13,
            )
          ],
        ));
  }
}

// ignore: must_be_immutable
class NavigatorCard extends StatefulWidget {
  final double width,height,pading;
  Color gradLight, gradDark;
  String image;

  NavigatorCard(
      {this.image,
      this.width,
        this.height,
        this.pading,
      this.gradLight: const Color(0xff2C3547),
      this.gradDark: const Color(0xff1F262F)});

  @override
  _NavigatorCardState createState() => _NavigatorCardState();
}

class _NavigatorCardState extends State<NavigatorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.pading),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xcc141920), offset: Offset(8, 9), blurRadius: 25)
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [widget.gradLight, widget.gradDark])),
      child: WebsafeSvg.asset(widget.image)
    );
  }
}
