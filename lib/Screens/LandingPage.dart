import 'package:bookquest_v3/GetX_Controllers/LandingPage_Controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bookquest_v3/ReusableCardLandingPage.dart';
import 'package:bookquest_v3/Screens/BrowseAllBooks.dart';
import 'package:bookquest_v3/Constants.dart';


final Widget bookSvg = SvgPicture.asset(
  'lib/design-elements/Book.svg',
  semanticsLabel: 'Book element',
  color: const Color.fromRGBO(222, 224, 202, 0.3),
  fit: BoxFit.fill,
);
final Widget starSvg = SvgPicture.asset(
  'lib/design-elements/Star.svg',
  semanticsLabel: 'Star element',
  color: const Color.fromRGBO(222, 224, 202, 0.3),
  fit: BoxFit.fill,
);
final Widget bookmarkSvg = SvgPicture.asset(
  'lib/design-elements/BookMark.svg',
  semanticsLabel: 'bookmark element',
  color: const Color.fromRGBO(222, 224, 202, 0.3),
  fit: BoxFit.fill,
);
final Widget MyBooksSvg = SvgPicture.asset(
  'lib/design-elements/MyBooks.svg',
  semanticsLabel: 'MyBooks element',
  color: const Color.fromRGBO(222, 224, 202, 0.3),
  fit: BoxFit.fill,
);

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandingPage_Controller>(
      builder: (controller) => Scaffold(
        extendBody: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          toolbarHeight: 100,
          title: const Text(
            'Home Page',
            style: kHeaderTextStyleBlack,
          ),
        ),
        body: ListView(
          children: [
            /**
             * Browse Books Card
             * */
            ReusableCardLanding.ReusableCardLanding(
              onTap: () {
                Get.to(BrowseAllBooks(), arguments: context);
              },
              Colorgradient: const LinearGradient(
                colors: [
                  Color(0xff168CA2),
                  //Color(0xff106676),
                  Color(0xff084C61),
                ],
                tileMode: TileMode.clamp,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Browse Books',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'By Genre, Author, Year of Publication or Publisher. Or just type the name of the book.',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: bookSvg),
                ],
              ),
            ),

            /**
             * Fav Books Card
             * */
            ReusableCardLanding.ReusableCardLanding(
              Colorgradient: const LinearGradient(
                colors: [
                  Color(0xffA6808C),
                  //Color(0xff706677),
                  Color(0xff565264),
                ],
                tileMode: TileMode.clamp,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Favorite Books',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'A list of your favorite books. The ones that you already read and love.',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: starSvg,),
                ],
              ),
            ),

            /**
             * My Books Card
             * */
            ReusableCardLanding.ReusableCardLanding(
              onTap: () {
                Get.to(BrowseAllBooks(), arguments: context);
              },
              Colorgradient: const LinearGradient(
                colors: [
                  Color(0xff168CA2),
                  //Color(0xff106676),
                  Color(0xff084C61),
                ],
                tileMode: TileMode.clamp,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Books',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'The books you own in your app library. All the books that you own without filter.',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: MyBooksSvg),
                ],
              ),
            ),

            /**
             *  Books to read Card
             * */
            ReusableCardLanding.ReusableCardLanding(
              Colorgradient: const LinearGradient(
                colors: [
                  Color(0xff7AE582),
                  Color(0xff214F4B),
                ],
                tileMode: TileMode.clamp,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Books to Read',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'A list of books that you would like to read or explore later.',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: bookmarkSvg,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
