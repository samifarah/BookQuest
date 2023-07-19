import 'package:bookquest_v3/Constants.dart';
import 'package:flutter/material.dart';
import 'package:bookquest_v3/ReusableCardStatic.dart';
class Physical_copies extends StatelessWidget {
  const Physical_copies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        toolbarHeight: 100,
        title: const Text(
          'Physical Copies',
          style: kHeaderTextStyleBlack,
        ),
      ),
      body: Column(
        children: [
          Expanded(child: buildbooks()),
        ],
      ),
    );
  }
}

Widget buildbooks() {
  return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, i) {
        return ReusableCardStatic.ReusableCardStat(
          CardColor: kSecondaryColor,
          cardChild: const Row(
            children: [
              Icon(Icons.book, size: 130, color: kOffWhite,),
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Text(
                      "PhysicalCopies", //namebook_____________________
                      style: kCardDescriptionTextStyleDark,
                    ),
                    Row(
                      children: [
                        Text(
                          "status:", //status_____________________________--
                          style: kCardDescriptionTextStyleDark,
                        ),
                        Text(
                          "Delivered",
                          style: kCardDescriptionTextStyleDark),
                      ],
                    ),
                    Row(
                      children: [
                        //date_______________________
                        Text(
                          "Date:",
                          style: kCardDescriptionTextStyleDark,
                        ),
                        Text(
                          "30/6/2020",
                          style: kCardDescriptionTextStyleDark
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ), //]
        );
      },
  );
}
