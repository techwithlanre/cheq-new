import 'package:flutter/material.dart';
import 'colors.dart';

TextStyle elevatedButtonTextStyle = TextStyle(
    //color: TColor.whiteColor,
    fontSize: 14,
    fontWeight: FontWeight.w600
);

TextStyle textStyle = TextStyle(
    //color: blackColor,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle textCaption = TextStyle(
    //color: TColor.whiteColor,
    fontSize: 13.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle redTextStyle = TextStyle(
    //color: Colors.red,
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle textStyleWhite = TextStyle(
    //color: whiteColor,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle textWhite12 = TextStyle(
    //color: whiteColor,
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle textBoldBlack = TextStyle(
    //color: blackColor,
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle textBoldWhite = TextStyle(
    color: whiteColor,
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle textBlackItalic = TextStyle(
    //color: blackColor,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.italic,
    fontFamily: "Poppins"
);

TextStyle textGrey = TextStyle(
    color: grey800,
    fontSize: 13.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle textGrey10 = TextStyle(
    //color: Colors.grey,
    fontSize: 10.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle textGrey14 = TextStyle(
    //color: Colors.grey,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle textSmallGrey = TextStyle(
    //color: Colors.grey,
    fontSize: 13.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle textGreyBold = TextStyle(
    color: Colors.grey,
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle textDeepBlue = TextStyle(
    color: TColor.deepBlue,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins"
);

TextStyle textDeepBlue16 = TextStyle(
    color: TColor.deepBlue,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins"
);

TextStyle textGrey600Bold = TextStyle(
    color: grey600,
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle textPrimaryBold = TextStyle(
    color: TColor.primaryColor,
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle splashLogoText = TextStyle(
    color: TColor.whiteColor,
    fontSize: 30.0,
    fontWeight: FontWeight.w900,
    letterSpacing: 5,
    fontFamily: "Poppins"
);

TextStyle headingBlack = TextStyle(
  color: blackColor,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle heading14Black = const TextStyle(
    color: darkBlue,
    fontSize: 18.0,
    fontWeight: FontWeight.w900,
    fontFamily: "Poppins"
);

/*
TextStyle textStyleBlue = TextStyle(
    //color: primaryColor,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle textStyleActive = TextStyle(
    //color: Color(0xFFF44336),
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle textStyleValidate = TextStyle(
    //color: Color(0xFFF44336),
    fontSize: 11.0,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.italic,
    fontFamily: "Poppins"
);


TextStyle textGreen = TextStyle(
    //color: Color(0xFF00c497),
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

final ThemeData base = ThemeData.light();

ThemeData appTheme = ThemeData(
  primary//color: primaryColor,
  button//color: primaryColor,
  indicator//color: Colors.white,
  splash//color: Colors.white24,
  splashFactory: InkRipple.splashFactory,
  canvas//color: Colors.white,
  scaffoldBackground//color: Colors.white,
  background//color: Colors.white,
  error//color: Color(0xFFB00020),
  iconTheme: IconThemeData(//color: primaryColor),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: TTextTheme.lightTextTheme,
  primaryTextTheme: TTextTheme.lightTextTheme,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondaryColor),
);

TextStyle textStyleSmall = TextStyle(
    //color: Color.fromRGBO(255, 255, 255, 0.8),
    fontSize: 12.0,
    fontFamily: "Poppins",
    fontWeight: FontWeight.bold);

//Image miniLogo = Image(
//    image: ExactAssetImage("assets/header-app_icon.png"),
//    height: 28.0,
//    width: 20.0,
//    alignment: FractionalOffset.center);

TextStyle headingWhite = TextStyle(
    //color: whiteColor,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle headingWhite18 = TextStyle(
    //color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle headingWhite30 = TextStyle(
    //color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle headingWhite25 = TextStyle(
    //color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle headingWhite20 = TextStyle(
    //color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle primaryHeading30 = TextStyle(
    //color: primaryColor,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle headingRed = TextStyle(
    //color: redColor,
    fontSize: 22.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle headingGrey = TextStyle(
    //color: Colors.grey,
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle headingGrey16Bold = TextStyle(
    //color: Colors.grey,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle headingGreyBold = TextStyle(
    //color: Colors.grey,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle headingGrey30 = TextStyle(
    //color: Colors.grey,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle heading18 = TextStyle(
    //color: Colors.white,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    fontFamily: "Poppins"
);

TextStyle heading18Black = TextStyle(
  //color: blackColor,
  fontSize: 18.0,
  fontWeight: FontWeight.w900,
);

TextStyle heading16Black = TextStyle(
  //color: blackColor,
  fontSize: 16.0,
  fontWeight: FontWeight.w900,
);

TextStyle heading14Black = TextStyle(
  //color: blackColor,
  fontSize: 14.0,
  fontWeight: FontWeight.w900,
);

TextStyle headingBlack = TextStyle(
    //color: blackColor,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle headingPrimaryColor = TextStyle(
    //color: primaryColor,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle heading35 = TextStyle(
    //color: whiteColor,
    fontSize: 35.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle heading35Black = TextStyle(
    //color: blackColor,
    fontSize: 35.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);

TextStyle heading25Black = TextStyle(
    //color: blackColor,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins"
);*/
