import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/sizes.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextStyle heading1 =
      TextStyle(fontSize: h1, fontWeight: FontWeight.w600, color: Colors.white);
  static TextStyle heading2 =
      TextStyle(fontSize: h2, fontWeight: FontWeight.w600, color: Colors.white);
  static TextStyle heading3 =
      TextStyle(fontSize: h3, fontWeight: FontWeight.w600, color: Colors.white);

  //primary body
  static TextStyle bodyPrimary =
      TextStyle(fontSize: h3, fontWeight: FontWeight.w500, color: Colors.white);

  //secondary body
  static TextStyle bodySecondaryBold = TextStyle(
      fontSize: bodyRegular, fontWeight: FontWeight.w600, color: Colors.white);
  static TextStyle bodySecondaryRegular = TextStyle(
      fontSize: bodyRegular, fontWeight: FontWeight.w500, color: Colors.white);

  //Tertiary
  static TextStyle bodyTertiaryBold = TextStyle(
      fontSize: bodyTertiary, fontWeight: FontWeight.w600, color: Colors.white);
  static TextStyle bodyTertiaryRegular = TextStyle(
      fontSize: bodyTertiary, fontWeight: FontWeight.w500, color: Colors.white);

  //caption1
  static TextStyle bodyCaption1Bold = TextStyle(
      fontSize: bodyCaption1, fontWeight: FontWeight.w600, color: Colors.white);
  static TextStyle bodyCaption1Regular = TextStyle(
      fontSize: bodyCaption1, fontWeight: FontWeight.w500, color: Colors.white);

  //label
  static TextStyle bodyLabelBold = TextStyle(
      fontSize: bodyLabel, fontWeight: FontWeight.w600, color: Colors.white);
  static TextStyle bodyLabelRegular = TextStyle(
      fontSize: bodyLabel, fontWeight: FontWeight.w500, color: Colors.white);

  //caption2
  static TextStyle bodyCaption2Bold = TextStyle(
      fontSize: bodyCaption2, fontWeight: FontWeight.w600, color: Colors.white);
  static TextStyle bodyCaption2Regular = TextStyle(
      fontSize: bodyCaption2, fontWeight: FontWeight.w500, color: Colors.white);
}
