import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/services.dart';

const kHeaderTextStyleWhite = TextStyle(
  fontSize: 40.0,
  color: Color(0xFFF6F7EB),
  fontWeight: FontWeight.w300,
);

const kHeaderTextStyleBlack = TextStyle(
  fontSize: 40.0,
  color: Colors.black54,
  fontWeight: FontWeight.w400,
);

const kButtonTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFFF6F7EB),
  fontWeight: FontWeight.w600,
);

const kMainTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w300,
);

const kDescriptiveTextStyle = TextStyle(
  fontSize: 16.0,
  color: Color(0xFF3C3D42),
  fontWeight: FontWeight.w400,
);

const kCardHeader2TextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);

const kCardHeaderTextStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 30,
  color: Colors.white,
);
const kCardHeaderTextStyleDark = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 30,
  color: Colors.black,
);
const kCardDescriptionTextStyle = TextStyle(
  fontWeight: FontWeight.w200,
  fontSize: 20,
  color: Colors.white,
);

const kCardDescriptionTextStyleDark = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 20,
  color: Colors.black45,
);
const kAppBarTitleTextStyle = TextStyle(
  color: Color(0xFFF6F7EB),
  fontSize: 40,
  fontFamily: 'ZillaSlab',
  fontWeight: FontWeight.w300,
);

const kChipTextStyle = TextStyle(
    color: kSoftBlack,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

const Image k_NovelPNG =
    Image(image: AssetImage('lib/design-elements/Novels.png'));
const Image k_DarkPNG =
    Image(image: AssetImage('lib/design-elements/Dark.png'));
const Image k_EducationPNG =
    Image(image: AssetImage('lib/design-elements/Education.png'));
const Image k_NonFicsPNG =
    Image(image: AssetImage('lib/design-elements/NonFic.png'));
const Image k_FictionPNG =
    Image(image: AssetImage('lib/design-elements/Fiction.png'));
const Image k_BiographyPNG =
    Image(image: AssetImage('lib/design-elements/Biography.png'));
const Image k_SelfHelpPNG =
    Image(image: AssetImage('lib/design-elements/SelfHelp.png'));
const Image k_WishlistHeader =
    Image(image: AssetImage('lib/design-elements/wishlistheader.png'));
const Image k_ConfirmOwnPdf = Image(
  image: AssetImage("lib/design-elements/YouOwnIt.png"),
);
const Image k_Delivery = Image(
  image: AssetImage("lib/design-elements/Delivery.png"),
);
const Image k_CoinsAdded = Image(
  image: AssetImage("lib/design-elements/QuestCoinsAdded.png"),
);
const Color kPrimaryColor = Color(0xFF084C61);

const Color kSecondaryColor = Color(0xFF177E89);

const Color kSoftBlack = Color(0xFF3C3D42);

const Color kOffWhite = Color(0xFFF6F7EB);

const Color kOffGray = Color(0xFFE0DDCA);

const Color kMainGreen = Color(0xFF16C172);

const Color kDarkGreen = Color(0xFF214F4B);

const Color kLavendarBright = Color(0xFFD6CFCB);

const Color kLavedarDark = Color(0xFFA6808C);

ElevatedButton Elevated({VoidCallback? onPressed, required String ButtonText}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(
      ButtonText,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    style: ElevatedButton.styleFrom(
      fixedSize: Size(300, 60),
      elevation: 5,
      shadowColor: Colors.black,
      backgroundColor: const Color(0xFF177E89),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

ElevatedButton ElevatedWhite(
    {VoidCallback? onPressed, required String ButtonText}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(
      ButtonText,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: kDarkGreen,
      ),
    ),
    style: ElevatedButton.styleFrom(
      fixedSize: Size(300, 60),
      elevation: 5,
      shadowColor: Colors.black,
      backgroundColor: kOffWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

TextButton Chips({VoidCallback? onPressed, required String ButtonText}) {
  return TextButton(
    style: TextButton.styleFrom(
      //fixedSize: Size(90, 30),
      backgroundColor: kLavendarBright,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      )
    ),
    onPressed: () {},
    child: Text(
      ButtonText,
      style: kChipTextStyle,
      textAlign: TextAlign.center,
    ),
  );
}
