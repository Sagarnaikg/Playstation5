//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/globalVariable.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: FeatureCard(
                    img: "assets/feaCard1.svg",
                    mainText: "Futuristic",
                    subText: "Design",
                    padding: 9,
                  ),
                ),
                Expanded(
                  child: FeatureCard(
                    img: "assets/feaCard2.svg",
                    mainText: "Built-in",
                    subText: "Microphone",
                    padding: 11,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: FeatureCard(
                    img: "assets/feaCard3.svg",
                    mainText: "Hoptic",
                    subText: "Feedback",
                    padding: 9,
                  ),
                ),
                Expanded(
                  child: FeatureCard(
                    img: "assets/feaCard4.svg",
                    mainText: "Fast charging",
                    subText: "USB-C port",
                    padding: 5,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final double padding;
  final String img, mainText, subText;
  FeatureCard({this.img, this.mainText, this.subText,this.padding});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Row(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 21),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [backLightBlue, backDarkBlue])),
                width: width,
                height: height,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22, vertical: 25),
                padding: EdgeInsets.all(padding),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [backLightDark, backDark])),
                width: width,
                height: height,
                child: WebsafeSvg.asset(img),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                mainText,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: mainTextColor,
                    fontFamily: "Play"),
              ),
              Text(
                subText,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0x80E8F2FC),
                    fontFamily: "Roboto"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
