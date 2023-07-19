import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookquest_v3/Constants.dart';

class Buying_Quest_Cions extends StatelessWidget {
  const Buying_Quest_Cions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buying Quest Coins"),
        titleTextStyle: kAppBarTitleTextStyle,
        toolbarHeight: 100,
        backgroundColor: kPrimaryColor,
        surfaceTintColor: kPrimaryColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF084C61),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF16C172),
            ),
            height: 150,
            width: 360,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    " 1 Quest Cions =20,000SYP",
                    style: kCardHeader2TextStyle,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton.small(onPressed: (){},
                      child: Icon(Icons.plus_one),
                      foregroundColor: kDarkGreen,
                      backgroundColor: kOffWhite,
                      elevation: 2,
                    ),

                    Container(
                      alignment: Alignment.center,
                      width: 76,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Color(0xFFDBDBDB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF214F4B),
                          fontSize: 20,
                          fontFamily: 'Zilla Slab',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    FloatingActionButton.small(onPressed: (){},
                      child: Icon(Icons.exposure_minus_1),
                      foregroundColor: kDarkGreen,
                      backgroundColor: kOffWhite,
                      elevation: 2,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
              height: 150,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedWhite(onPressed:(){} ,ButtonText: "Add Five Coins"),
                  ElevatedWhite(onPressed:(){} ,ButtonText: "Add Ten Coins"),
                ],
              )
          ),
          Container(
              alignment: Alignment.center,
              height: 300,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Elevated( onPressed:(){}, ButtonText: "Confirm"),
                ],
              )
          ),
        ],
      ),
    );
  }
}
