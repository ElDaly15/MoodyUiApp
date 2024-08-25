// (min , max) fontsize
import 'package:flutter/material.dart';

abstract class Style {
  static TextStyle font24Regular(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle font24Bold(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold);
  }
  // 24 Reguler And Bold Style

  static TextStyle font18Regular(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle font18Bold(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold);
  }

  // 18 Reguler And Bold Style

  static TextStyle font22Bold(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold);
  }

  static TextStyle font22Regular(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  // 22 Reguler And Bold Style

  static TextStyle font14Regular(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle font14Bold(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold);
  }

  // 14 Reguler And Bold Style

  static TextStyle font12Regular(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle font12Bold(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        color: Colors.black,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold);
  }

  // 12 Reguler And Bold Style
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 2300;
  }
}
