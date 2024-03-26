import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber200,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.18),
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.2),
      );
  static BoxDecoration get fillGray9001 => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.3),
      );
  static BoxDecoration get fillGray9002 => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.22),
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA100,
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.81, 0.5),
          end: Alignment(-0.8, 0.5),
          colors: [
            appTheme.gray50,
            appTheme.gray200,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.9),
          end: Alignment(0.5, 0.08),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.08),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer1 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1.11),
          end: Alignment(0.5, 0.08),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer2 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1.11),
          end: Alignment(0.5, 0.08),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.blue700.withOpacity(0.05),
        border: Border.all(
          color: appTheme.blue60019,
          width: 2.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray700.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineBluegray1001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineBluegray1002 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray100,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray1003 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray100,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray1004 => BoxDecoration();
  static BoxDecoration get outlineBluegray1005 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray1006 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray700 => BoxDecoration();
  static BoxDecoration get outlineBluegray7001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray700.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray7002 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray700.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineCyanA => BoxDecoration(
        border: Border.all(
          color: appTheme.cyanA10001,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineCyanA10001 => BoxDecoration(
        border: Border.all(
          color: appTheme.cyanA10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray2001 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray2002 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray2003 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray2004 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray2005 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray200,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGray900 => BoxDecoration(
        color: appTheme.gray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray9001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayF => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray6000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLightBlueA => BoxDecoration(
        border: Border.all(
          color: appTheme.lightBlueA200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightblueA200 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.lightBlueA200,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onErrorContainer.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2.2,
              4.4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        color: appTheme.lightBlue50,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL12 => BorderRadius.only(
        topRight: Radius.circular(12.h),
        bottomLeft: Radius.circular(12.h),
        bottomRight: Radius.circular(12.h),
      );
  static BorderRadius get customBorderTL12 => BorderRadius.only(
        topLeft: Radius.circular(12.h),
        bottomLeft: Radius.circular(12.h),
        bottomRight: Radius.circular(12.h),
      );
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
        top: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL32 => BorderRadius.vertical(
        top: Radius.circular(32.h),
      );
  static BorderRadius get customBorderTL35 => BorderRadius.vertical(
        top: Radius.circular(35.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder33 => BorderRadius.circular(
        33.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    