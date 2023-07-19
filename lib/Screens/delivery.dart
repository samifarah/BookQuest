import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bookquest_v3/Constants.dart';

class delivery extends StatelessWidget {
  const delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF084C61),
    appBar: AppBar(
    backgroundColor: kPrimaryColor,
    surfaceTintColor: kPrimaryColor,
    automaticallyImplyLeading: true,
    centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Delivering Your Book!",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: kCardHeaderTextStyle.fontWeight,
                  color: Colors.white),
            ),
          ),
          Text(
            "Your book will be deliverd in 2 \nto 5 bussiness days.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )
          ),

          Container(
            //image__________________________

            child: k_Delivery,
          ),
          Container(
              height: 200,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Elevated(onPressed: () {}, ButtonText: "Check Deliveries"),
                  Elevated(onPressed: () {}, ButtonText: "Go Back Home"),
                ],
              )
          )
        ],
      ),
    );
  }
}
