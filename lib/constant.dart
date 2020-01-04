import 'package:flutter/material.dart';

const kGrabWhiteBoldMedium = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.white,
);

const kGrabWhiteRegularSmall = TextStyle(
  fontSize: 20,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.white,
);


const kGrabBlackBoldSmall = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

const kGrabBlackBoldMedium = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

const kGrabBlackBoldLarge = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

const kGrabBlackRegularMedium = TextStyle(
  fontSize: 20,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

const kGrabBlackRegularSmall = TextStyle(
  fontSize: 12,
  fontFamily: 'Sanomat Grab Web',
  color: Colors.black,
);

fivePercentWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.05;
}

percentHeight(BuildContext context, double percent) {
  return MediaQuery.of(context).size.height * percent;
}
