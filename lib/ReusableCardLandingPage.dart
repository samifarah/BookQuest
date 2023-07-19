import 'package:flutter/material.dart';

class ReusableCardLanding extends StatefulWidget {
  final Gradient Colorgradient;
  final Widget cardChild;
  final VoidCallback? onTap;

  ReusableCardLanding.ReusableCardLanding(
      {
        required this.Colorgradient,
        required this.cardChild,
        this.onTap
      });

  @override
  _ReusableCardLandingState createState() => _ReusableCardLandingState();
}

class _ReusableCardLandingState extends State<ReusableCardLanding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      //height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          gradient: widget.Colorgradient,
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



















