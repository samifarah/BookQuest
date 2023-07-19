import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bookquest_v3/Constants.dart';

class Quest_Coins_Adeed extends StatelessWidget {
  const Quest_Coins_Adeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
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
              "Quest Coins Added",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: kCardHeaderTextStyle.fontWeight,
                  color: Colors.white),
            ),
          ),
          Container(
            child: k_CoinsAdded,
          ),
          Container(
            height: 200,
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Elevated(onPressed: (){}, ButtonText: "Go To Wishlist"),
                Elevated(onPressed: (){}, ButtonText: "Go Back Home")
              ],
            )
          )

        ],
      ),
    );
  }
}
