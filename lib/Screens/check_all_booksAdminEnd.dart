import 'package:flutter/material.dart';
import 'package:bookquest_v3/Constants.dart';
import 'package:bookquest_v3/CustomSearchDelegate.dart';
class check_all_books extends StatelessWidget {
  const check_all_books({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        surfaceTintColor: kPrimaryColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        toolbarHeight: 100,
        title: const Text(
          'All Library Books',
          style: kHeaderTextStyleBlack,
        ),
      ),
      backgroundColor: kSecondaryColor,
      body: Column(children: [
        Expanded(child: build_all_book())
      ]),
    );
  }
}

Widget build_all_book() {
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, i) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Container(
            width: 600,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Padding(
                  //image
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 100,
                      width: 80, //image____________________________
                      child: Image.asset(
                        "",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ), //
                Padding(
                  padding: EdgeInsets.all(9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "petals in the wind", //text book title________
                        style: TextStyle(
                          color: Colors
                              .black87, //Get.isDarkMode? Colors.white:Colors.black38,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Added Date:", //text added date_________
                            style: TextStyle(
                              color: Colors
                                  .black, //Get.isDarkMode? Colors.white:Colors.black38,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ), // date :_____________
                          Text(
                            "15_3_2023",
                            style: TextStyle(
                              color: Colors
                                  .black54, //Get.isDarkMode? Colors.white:Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons
                                .edit_calendar_outlined, //icon(edit)___________________
                            size: 25,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed:
                              () {}, //icon(archive)_______________________
                          icon: Icon(
                            Icons.archive_outlined,
                            size: 25,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            //icon(delete)__________________________
                            Icons.delete,
                            size: 25,
                            color: Colors.red,
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
