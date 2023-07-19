import 'package:bookquest_v3/Constants.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  Wishlist({Key? key}) : super(key: key);

  //Todo: Add Search to the header

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        surfaceTintColor: Colors.white,
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        toolbarHeight: 100,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 65),
                child: Text(
                  'Wishlist',
                  style: kHeaderTextStyleBlack,
                ),
              ),
              k_WishlistHeader,
            ],
          ),
        ),

      ),
      body: Column(
        children: [
          Expanded(child: buildwishlistItems()),
        ],
      ),
    );
  }
}

Widget buildwishlistItems() {
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, i) {
        return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)),
              child: Row(children: [
                Icon(Icons.book, size: 130, color: kPrimaryColor,), //
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "titlelle", //title book_______________________________-
                      style: TextStyle(
                        color: Colors
                            .black, //Get.isDarkMode? Colors.white:Colors.black38,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Price:", //price:______________________
                          style: TextStyle(
                            color: Color(
                                0xFF177E89), //Get.isDarkMode? Colors.white:Colors.black38,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$100",
                          style: TextStyle(
                            color: Colors
                                .black, //Get.isDarkMode? Colors.white:Colors.black38,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Buy Book",
                            style: TextStyle(
                              color: Colors
                                  .white, //Get.isDarkMode? Colors.white:Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF177E89),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 3),
                            child: Text(
                              "Remove", //Remove_____________________
                              style: TextStyle(
                                color: Colors
                                    .white, //Get.isDarkMode? Colors.white:Colors.black38,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF177E89),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ]),
            ));
      });
}
