//dart import
import 'package:flutter/material.dart';
import 'package:playstationapp/globalVariable.dart';
import 'package:websafe_svg/websafe_svg.dart';

class PriceTage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(17, 9, 17, 17),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xaa111111),
                    offset: Offset(7, 8),
                    blurRadius: 10),
                BoxShadow(
                    color: Color(0x15AAB2BB),
                    offset: Offset(-7, -8),
                    blurRadius: 20)
              ],
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff495879), Color(0xff0C0F12)]),
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff232A39)),
        ),
        Container(
          height: 200,
          margin: EdgeInsets.fromLTRB(18, 10, 18, 18),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff232A39)),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Price(),
              ),
              Expanded(
                child: OrderButton(),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          WebsafeSvg.asset("assets/dollor.svg", height: 23),
          SizedBox(
            width: 3,
          ),
          Text(
            "50",
            style: TextStyle(
                color: Color(0xffB2BAC2),
                fontWeight: FontWeight.bold,
                fontSize: 35),
          )
        ],
      ),
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 15, 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          gradient: LinearGradient(colors: [backLightBlue, backDarkBlue])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Place order",
            style: TextStyle(
                color: Color(0xffD7E3EE),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          WebsafeSvg.asset("assets/arrow-right.svg")
        ],
      ),
      height: 100,
    );
  }
}
