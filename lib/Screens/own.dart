import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bookquest_v3/Constants.dart';

class Own extends StatelessWidget {
  const Own({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF084C61),
    appBar: AppBar(
    backgroundColor: kPrimaryColor,
    surfaceTintColor: kPrimaryColor,
    automaticallyImplyLeading: true,
    centerTitle: true,
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "You now own it!",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: kCardHeaderTextStyle.fontWeight,
                  color: Colors.white),
            ),
          ),
          Container(
            //image__________________________
            child: k_ConfirmOwnPdf,
          ),
          Container(
              height: 200,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Elevated(onPressed: (){},ButtonText: "Start Reading"),
                  Elevated(onPressed: (){} ,ButtonText: "Go Back Home"),
                ],
              )
          )
        ],
      ),
    );
  }
}
