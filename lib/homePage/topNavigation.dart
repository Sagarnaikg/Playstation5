//dart import
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class TopNavigation extends StatefulWidget {
  @override
  _TopNavigationState createState() => _TopNavigationState();
}

class _TopNavigationState extends State<TopNavigation> {
  int slectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
        width: width * 0.75,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 25),
        child: TabBar(
          onTap: (index) {
            setState(() {
              slectedIndex = index;
            });
          },
          indicatorWeight: 0.00000001,
          tabs: [
            NavigatorCard(
              image: "assets/games.svg",
              width: width * 0.15,
              height: height,
              pading: 13,
              index: 0,
              slectedIndex: slectedIndex,
            ),
            NavigatorCard(
              image: "assets/headset.svg",
              width: width * 0.15,
              height: height,
              pading: 16,
              index: 1,
              slectedIndex: slectedIndex,
            ),
            NavigatorCard(
              image: "assets/mouse.svg",
              width: width * 0.15,
              height: height,
              pading: 13,
              index: 2,
              slectedIndex: slectedIndex,
            ),
          ],
        ));
  }
}

// ignore: must_be_immutable
class NavigatorCard extends StatefulWidget {
  int index, slectedIndex;
  double width, height, pading;
  Color gradLight, gradDark;
  String image;

  NavigatorCard(
      {this.image,
      this.width,
      this.height,
      this.pading,
      this.index,
      this.slectedIndex});

  @override
  _NavigatorCardState createState() => _NavigatorCardState();
}

class _NavigatorCardState extends State<NavigatorCard> {
  @override
  Widget build(BuildContext context) {
    if (widget.slectedIndex == widget.index) {
      widget.gradLight = Color(0xff3B9FE8);
      widget.gradDark = Color(0xff414ED7);
    } else {
      widget.gradLight = const Color(0xff2C3547);
      widget.gradDark = const Color(0xff1F262F);
    }

    return Container(
        padding: EdgeInsets.all(widget.pading),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xaa141920),
                  offset: Offset(8, 9),
                  blurRadius: 25)
            ],
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [widget.gradLight, widget.gradDark])),
        child: WebsafeSvg.asset(widget.image));
  }
}

class FilterAction extends StatefulWidget {
  @override
  _FilterActionState createState() => _FilterActionState();
}

class _FilterActionState extends State<FilterAction> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Stack(children: [
      Container(
        margin: EdgeInsets.fromLTRB(0, 25, 20, 25),
        padding: EdgeInsets.all(17),
        height: height,
        width: width,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xaa141920),
                  offset: Offset(8, 9),
                  blurRadius: 25)
            ],
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff3B9FE8), Color(0xff414ED7)])),
      ),
      Container(
          margin: EdgeInsets.fromLTRB(3, 28, 23, 28),
          padding: EdgeInsets.all(14),
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff2C3547), Color(0xff1F262F)])),
          child: Container(child: WebsafeSvg.asset("assets/options.svg"))),
    ]);
  }
}
