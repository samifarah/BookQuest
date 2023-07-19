import 'package:bookquest_v3/GetX_Controllers/CategorisePage_Controller.dart';
import 'package:bookquest_v3/GetX_Controllers/LandingPage_Controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bookquest_v3/ReusableCardCatgoriesPage.dart';

import 'package:bookquest_v3/Screens/BrowseAllBooks.dart';
import 'package:bookquest_v3/Constants.dart';

final Widget bookSvg = SvgPicture.asset(
  'lib/design-elements/Book.svg',
  semanticsLabel: 'Book element',
  color: const Color.fromRGBO(222, 224, 202, 0.3),
  fit: BoxFit.fill,
);


class Categorise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategorisePage_Controller>(
      builder: (controller) => Scaffold(

        extendBody: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          toolbarHeight: 100,
          title: const Text(
            'Categorise',
            style: kHeaderTextStyleBlack,
          ),
        ),


        body: ListView(
          children: [
            /**
             * Novels Card
             * */
            ReusableCardCategorise.ReusableCardCategories(
              onTap: () {
                Get.to(BrowseAllBooks(), arguments: context);
              },
              CardColor: kSecondaryColor,
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
                            'Novels',
                            style: kCardHeaderTextStyle
                          ),
                          Text(
                            'Experience heartfelt emotions, love, history, and engaging stories across different eras.',
                            style: kCardDescriptionTextStyle
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(20),
                      child: k_NovelPNG),
                ],
              ),
            ),


            /**
             * Dark Card
             * */
            ReusableCardCategorise.ReusableCardCategories(
              onTap: () {
                Get.to(BrowseAllBooks(), arguments: context);
              },
              CardColor: kSecondaryColor,
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
                              'Dark',
                              style: kCardHeaderTextStyle
                          ),
                          Text(
                              'Experience an adrenaline rush, discover stories about crimes, mysteries, and thrillers.',
                              style: kCardDescriptionTextStyle
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(20),
                      child: k_DarkPNG),
                ],
              ),
            ),


            /**
             * Education Card
             * */
            ReusableCardCategorise.ReusableCardCategories(
              onTap: () {
                Get.to(BrowseAllBooks(), arguments: context);
              },
              CardColor: kSecondaryColor,
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
                              'Education',
                              style: kCardHeaderTextStyle
                          ),
                          Text(
                              'If you want to excel in maths or physics or master a new skill, you will find it all here.',
                              style: kCardDescriptionTextStyle
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(20),
                      child: k_EducationPNG),
                ],
              ),
            ),

            /**
             * NonFic Card
             * */
            ReusableCardCategorise.ReusableCardCategories(
              onTap: () {
                Get.to(BrowseAllBooks(), arguments: context);
              },
              CardColor: kSecondaryColor,
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
                              'Non-Fiction',
                              style: kCardHeaderTextStyle
                          ),
                          Text(
                              'Here, you can find journeys and captivating stories of extraordinary individuals.',
                              style: kCardDescriptionTextStyle
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(20),
                      child: k_NonFicsPNG),
                ],
              ),
            ),


            /**
             * Fiction Card
             * */
            ReusableCardCategorise.ReusableCardCategories(
              onTap: () {
                Get.to(BrowseAllBooks(), arguments: context);
              },
              CardColor: kSecondaryColor,
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
                              'Fiction',
                              style: kCardHeaderTextStyle
                          ),
                          Text(
                              'Witness the adventures of a lifetime and explore imaginative realms with this collection of books.',
                              style: kCardDescriptionTextStyle
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(20),
                      child: k_FictionPNG),
                ],
              ),
            ),


            /**
             * Bigraphy Card
             * */
            ReusableCardCategorise.ReusableCardCategories(
              onTap: () {
                Get.to(BrowseAllBooks(), arguments: context);
              },
              CardColor: kSecondaryColor,
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
                              'Biography',
                              style: kCardHeaderTextStyle
                          ),
                          Text(
                              'Grasp a glimpse of the lives of characters throughout history, and know them personally.',
                              style: kCardDescriptionTextStyle
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(20),
                      child: k_BiographyPNG),
                ],
              ),
            ),


            /**
             * SelfHelp Card
             * */
            ReusableCardCategorise.ReusableCardCategories(
              onTap: () {
                Get.to(BrowseAllBooks(), arguments: context);
              },
              CardColor: kSecondaryColor,
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
                              'Self-help',
                              style: kCardHeaderTextStyle
                          ),
                          Text(
                              'Here, you will enhance your personal growth, and enrich your mind with wisdom.',
                              style: kCardDescriptionTextStyle
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(20),
                      child: k_SelfHelpPNG),
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
