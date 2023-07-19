
import 'package:flutter/material.dart';

class ReusableCardStatic extends StatefulWidget {
  final Color CardColor;
  final Widget cardChild;

  ReusableCardStatic.ReusableCardStat(
      {
        required this.CardColor,
        required this.cardChild,
      });

  @override
  _ReusableCardStaticState createState() => _ReusableCardStaticState();
}

class _ReusableCardStaticState extends State<ReusableCardStatic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      //height: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: widget.CardColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 5.0,
            )
          ]
      ),
      child: widget.cardChild,
    );
  }
}



















