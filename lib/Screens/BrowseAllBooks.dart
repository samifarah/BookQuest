import 'package:flutter/material.dart';
import 'package:bookquest_v3/Constants.dart';
import 'package:bookquest_v3/CustomSearchDelegate.dart';
import 'package:bookquest_v3/GetX_Controllers/NavigationBar_Controller.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
class BrowseAllBooks extends StatelessWidget {
  List data = [];
  final dio = Dio();
  Future<void> fetchBooks() async {
    final response = await dio.get('http://10.0.2.2:8000/api/showbooks');
    print(response.statusCode);
    print(response.data);
    if (response.statusCode == 200) {
        data = response.data;
    }else {
      // Handle API error
      print('API Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: Icon(Icons.search_rounded),
          ),
        ],
        centerTitle: true,
        toolbarHeight: 100,
        title: const Text(
          'All Books',
          style: kHeaderTextStyleBlack,
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: Padding(
                key: Key('padding_widget'),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: FutureBuilder<void>(
                  future: fetchBooks(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('Error: ${snapshot.error}'),
                      );
                    } else {
                      return GridView.builder(
                        addRepaintBoundaries: false,
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 4,
                          crossAxisSpacing: 30,
                        ),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          final book = data[index];
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
                                    icon: Icon(
                                      Icons.bookmark,
                                      color: Color(0xFF177E89),
                                    ),
                                  ),
                                ],
                              ),
                              Flexible(
                                child: Container(
                                  width: 130,
                                  height: 200,
                                  child: Text(
                                    '${data[index]['title']}',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: kDescriptiveTextStyle,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
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
