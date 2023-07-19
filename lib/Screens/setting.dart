import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:bookquest_v3/themes/theme_controller.dart';
import 'package:bookquest_v3/themes/themeserves.dart';
import 'package:bookquest_v3/locale/locale_controller.dart';

class Setting extends StatelessWidget {
  Setting({Key? key}) : super(key: key);
  // final ThemesController _themesController=Get.find<ThemesController>();
  @override
  Widget build(BuildContext context) {
    const moonIcon = CupertinoIcons.moon_stars; //icon

    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Align(
          alignment: Alignment.center, //text(sertting)
          child: Padding(
            padding: EdgeInsets.only(top: 25, left: 50, right: 50, bottom: 20),
            child: Text(
              "9".tr,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          //change App Theme
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFF084C61)),
          width: 350,
          height: 120,

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2, left: 16, right: 10),
                child: Row(
                  children: [
                    Text(
                      "2".tr, // change (theme)________________
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: IconButton(
                          onPressed: () {
                            ThemeServes().changeTheme();
                          },
                          icon: Icon(
                            moonIcon,
                            color: Colors.grey,
                            size: 50,
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          // change (languages)__________________
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.purpleAccent,
          ),
          width: 350,
          height: 120,
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, bottom: 4),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "1".tr,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                    // SizedBox(height:10,),
                    Spacer(),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            controllerLang.changLand("ar");
                          },

                          child:
                              // Padding(
                              //padding:  EdgeInsets.symmetric(vertical: 1,horizontal:1),
                              // child:
                              Text(
                            "3".tr, //arabic
                            style: TextStyle(
                              color: Colors
                                  .white, //Get.isDarkMode? Colors.white:Colors.black38,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //),
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.black,
                              backgroundColor: Color(0xFF177E89),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controllerLang.changLand("en");
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 1),
                            child: Text(
                              "4".tr, //en
                              style: TextStyle(
                                color: Colors
                                    .white, //Get.isDarkMode? Colors.white:Colors.black38,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.black,
                              backgroundColor: Color(0xFF177E89),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      width: 50,
                      height: 70,
                      child: Image.asset('assets/images/translate.png')),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          //wallet_________________
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFF084C61)),
          width: 350,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "5".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.white),
                ),
                Spacer(),
                Container(
                    width: 80,
                    height: 60,
                    child:
                        Image.asset('assets/images/account_balance_wallet.png'))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          //(physical Copies)______________________
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.purpleAccent,
          ),
          width: 350,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "6".tr, //wishlist(text)__
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.white),
                ),
                Spacer(),
                Container(
                    width: 80,
                    height: 90,
                    child: Image.asset('assets/images/auto_stories.png'))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          //(report issue)___________________
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFF084C61)),
          width: 350,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "7".tr, //wishlist(text)__
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.white),
                ),
                Spacer(),
                Container(
                    width: 80,
                    height: 90,
                    child: Image.asset('assets/images/bug_report.png'))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          //(contact us)_______________________
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFF084C61)),
          width: 350,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  "8".tr, //wishlist(text)__
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.white),
                ),
                Spacer(),
                Container(
                    width: 80,
                    height: 90,
                    child: Image.asset(
                        'assets/images/image_2023-06-04_19-24-35.png'))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
