
import 'package:flutter/material.dart';

class ReusableCardCategorise extends StatefulWidget {
  final Color CardColor;
  final Widget cardChild;
  final VoidCallback? onTap;

  ReusableCardCategorise.ReusableCardCategories(
      {
        required this.CardColor,
        required this.cardChild,
        this.onTap
      });

  @override
  _ReusableCardCategoriseState createState() => _ReusableCardCategoriseState();
}

class _ReusableCardCategoriseState extends State<ReusableCardCategorise> {
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
      child: InkWell(
          borderRadius: BorderRadius.circular(25.0),
          child: widget.cardChild,
          onTap: widget.onTap
      ),
    );
  }
}



















