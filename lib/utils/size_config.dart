import 'package:flutter/material.dart';

class SizeConfig {
  static late bool isTablet;
  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
    isTablet = screenWidth >= 600;
  }
  static double get paddingXSmall => isTablet ? 8.0 : 4.0;
  static double get paddingXS => isTablet ? 12.0 : 8.0;
  static double get paddingXSL => isTablet ? 14.0 : 10.0;
  static double get paddingS => isTablet ? 16.0 : 12.0;
  static double get paddingM => isTablet ? 20.0 : 16.0;
  static double get paddingL => isTablet ? 28.0 : 20.0;
  static double get paddingXL => isTablet ? 36.0 : 24.0;
  static double get buttonXL => isTablet ? 30.0 : 40.0;
  static double get extraSmall => isTablet ? 14.0 : 10.0;
  static double get small => isTablet ? 16.0 : 12.0;
  static double get medium => isTablet ? 18.0 : 14.0;
  static double get large => isTablet ? 22.0 : 16.0;
  static double get extraLarge => isTablet ? 26.0 : 20.0;
  static double get extraLarge22 => isTablet ? 28.0 : 22.0;
  static double get title => isTablet ? 30.0 : 24.0;
  static double get heading => isTablet ? 36.0 : 28.0;

  static double get size8 => isTablet ? 16.0 : 8.0;
  static double get size10 => isTablet ? 20.0 : 10.0;
  static double get size12 => isTablet ? 24.0 : 12.0;
  static double get size18 => isTablet ? 28.0 : 18.0;
  static double get size80 => isTablet ? 90.0 : 80.0;
  static double get size150 => isTablet ? 170.0 : 150.0;
  static double get size170 => isTablet ? 190.0 : 170.0;
}