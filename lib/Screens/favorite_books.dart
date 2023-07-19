import 'package:flutter/material.dart';
import 'package:bookquest_v3/Constants.dart';
//import 'package:untitled13/CustomSearchDelegate.dart';
//import 'package:bookquest_v3/NavigationBar.dart';
//import 'package:bookquest_v3/GetX_Controllers/NavigationBar_Controller.dart';

class Favorite_Books  extends StatelessWidget {
  final List<Map> myProducts =
  List.generate(10000, (index) => {"id": index, "name": "Product Product Products Products $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          title: const Text(
            'Favorite Books',
            style: kHeaderTextStyleBlack,
          ),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Expanded(
              child: Padding(
                key: Key('padding_widget'),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  addRepaintBoundaries: false,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 30,
                  ),
                  itemBuilder: (passedContext, index) {
                    return Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Card(
                              elevation: 3,
                              color: Color(0xFFF6F7EB),
                              margin: EdgeInsets.only(bottom: 2),
                              child: SizedBox(
                                height: 180,
                                width: 150,
                                child: Icon(
                                  Icons.book_outlined,
                                  size: 125,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.star,
                                color: kSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Container(
                            width: 130,
                            height: 200,
                            child: Text(
                              myProducts[index]["name"],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: kDescriptiveTextStyle,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
