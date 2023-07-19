import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:bookquest_v3/GetX_Controllers/ProfilePage_Controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:bookquest_v3/Constants.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilePage_Controller>(
      builder: (controller) => Scaffold(
        extendBody: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          toolbarHeight: 100,
          title: const Text(
            'Profile',
            style: kHeaderTextStyleBlack,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2.6,
                          margin: EdgeInsets.only(
                            left: 20,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(4)),
                          padding: EdgeInsets.all(4),
                          child: Text(
                            "First Name",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.6,
                          margin: EdgeInsets.only(
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(4)),
                          padding: EdgeInsets.all(4),
                          child: Text(
                            "Last Name",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Phone number",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "Date of Birth",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "your coins:   ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(23, 126, 137, 1),
                        borderRadius: BorderRadius.circular(15)),
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    child: MaterialButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const change_pass()));
                      },
                      // color: Color.fromRGBO(23, 126, 137, 1),
                      child: const Text("Change Password",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      // alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(23, 126, 137, 1),
                        borderRadius: BorderRadius.circular(15)),
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    child: MaterialButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Signup()));
                      },

                      // color: Color.fromRGBO(23, 126, 137, 1),
                      child: const Text("Save Change",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      // alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
