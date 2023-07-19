import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:bookquest_v3/GetX_Controllers/SearchPage_Controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:bookquest_v3/Constants.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchPage_Controller>(
      builder: (controller) => Scaffold(
        extendBody: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          toolbarHeight: 100,
          title: const Text(
            'Search',
            style: kHeaderTextStyleBlack,
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 30,vertical: 10),
              child: CupertinoSearchTextField(

                prefixInsets: const EdgeInsetsDirectional.fromSTEB(15, 10, 0, 10),
                suffixInsets: const EdgeInsetsDirectional.fromSTEB(0, 10, 15, 10),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: kSoftBlack,
                ),
                suffixIcon: const Icon(
                  Icons.clear,
                  color: kSoftBlack,
                ),
                placeholderStyle: kCardDescriptionTextStyleDark,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        color: kSoftBlack,
                        blurRadius: 3,
                        offset: Offset(0,2),
                    ),
                  ],
                ),
              ),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 10,
              children: [
                Chips(onPressed: (){},ButtonText: "All"),
                Chips(onPressed: (){},ButtonText: "Books"),
                Chips(onPressed: (){},ButtonText: "Authors"),
                Chips(onPressed: (){},ButtonText: "Publisher"),
                Chips(onPressed: (){},ButtonText: "Year"),
                Chips(onPressed: (){},ButtonText: "Language"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
