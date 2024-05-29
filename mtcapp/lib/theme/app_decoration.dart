import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA200,
      );
  static BoxDecoration get fillOrangeF => BoxDecoration(
        color: appTheme.orange600F7,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillYellow900f7 => BoxDecoration(
        color: appTheme.yellow900F7,
      );
  static BoxDecoration get fillYellowF => BoxDecoration(
        color: appTheme.yellow800F7,
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberAToLime => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.amber500A3,
            appTheme.lime800Ea,
            appTheme.lime90001,
          ],
        ),
      );
  static BoxDecoration get gradientGreenAToErrorContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.greenA20001,
            theme.colorScheme.errorContainer,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToCyan => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.indigo200,
            theme.colorScheme.secondaryContainer,
            appTheme.cyan900,
          ],
        ),
      );
  static BoxDecoration get gradientPinkToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.pink50001,
            appTheme.gray60001,
          ],
        ),
      );
  static BoxDecoration get gradientPinkToGray90002 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.pink300,
            appTheme.pink90001,
            appTheme.gray90002,
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToBlueGray => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.purple40001,
            appTheme.blueGray700,
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.purple10001,
            appTheme.red90001,
            appTheme.gray700,
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.purple400,
            appTheme.purple900,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToGray => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.redA700,
            appTheme.gray600,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToGray60002 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.redA100,
            appTheme.gray60002,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToLime => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.redA700.withOpacity(0.71),
            appTheme.lime900,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.redA700,
            appTheme.pink90002,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToRedA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.redA700,
            appTheme.whiteA700.withOpacity(0),
            appTheme.redA70000,
          ],
        ),
      );
  static BoxDecoration get gradientTealToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.teal50,
            appTheme.blueGray100,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 0),
          colors: [
            appTheme.whiteA700,
            appTheme.gray400,
            appTheme.red600,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.purple50,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.teal5003,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.greenA100,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: appTheme.red200,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        color: appTheme.lightGreen300,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary5 => BoxDecoration(
        color: appTheme.teal10001,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary6 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder65 => BorderRadius.circular(
        65.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL34 => BorderRadius.vertical(
        bottom: Radius.circular(34.h),
      );
  static BorderRadius get customBorderBR115 => BorderRadius.only(
        topLeft: Radius.circular(99.h),
        topRight: Radius.circular(112.h),
        bottomLeft: Radius.circular(112.h),
        bottomRight: Radius.circular(115.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder103 => BorderRadius.circular(
        103.h,
      );
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get roundedBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get roundedBorder31 => BorderRadius.circular(
        31.h,
      );
  static BorderRadius get roundedBorder44 => BorderRadius.circular(
        44.h,
      );
  static BorderRadius get roundedBorder48 => BorderRadius.circular(
        48.h,
      );
  static BorderRadius get roundedBorder52 => BorderRadius.circular(
        52.h,
      );
  static BorderRadius get roundedBorder62 => BorderRadius.circular(
        62.h,
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
