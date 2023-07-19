import 'package:bookquest_v3/Constants.dart';
import 'package:flutter/material.dart';


class confirm_Order extends StatelessWidget {
  const confirm_Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        surfaceTintColor: kPrimaryColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        toolbarHeight: 200,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Petals in the wind',
              style: kHeaderTextStyleWhite,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            const Text(
              'By V.C Andrews',
              style: kCardDescriptionTextStyle,
              maxLines: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(110, 55),
                backgroundColor: kSecondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),

              ),
              child: const Text(
                "Physical \nCopy",
                style: TextStyle(
                  color: Colors
                      .white, //Get.isDarkMode? Colors.white:Colors.black38,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                //text(description)_______________________
                "Description:",
                style: kCardHeaderTextStyle,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              width: 350,
              height: 160,
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Text(
                      "For Carrie, Chris and Cathy the attic was a dark horror that would not leave their minds. Of course mother had to pretend they didn't exist and grandmother was convinced they had the devil in them. But that wasn't their fault. ",
                      style: TextStyle(
                        fontSize: 16, //kDescriptiveTextStyle.fontSize,
                        fontWeight: kDescriptiveTextStyle.fontWeight,
                        color: kDescriptiveTextStyle.color,
                      ),
                    ),
                  )
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  "Ratings:", //text(rating)______________________
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "4.13/5",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                ),
              ],
            ),

            //----------------------Screen Footer-------------------------
            const SizedBox(
              height: 200,
            ),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Price:", //text(price)_____________________________________
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                "15\$",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            Elevated(onPressed: (){} , ButtonText: "Confirm Payment"),
            const SizedBox(height: 5,),
            Text("*Payment Upon Delivery Success",
            textAlign: TextAlign.left,
              style:
              TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w100,
             ),
            ),
          ],
        ),
      ),
    );
  }
}


