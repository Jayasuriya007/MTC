import 'dart:ui';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  static var fill;

  // Filled button style
  static ButtonStyle get fillGreenA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.greenA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.h),
        ),
      );
  static ButtonStyle get fillLightBlueEa => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlue400Ea,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34.h),
        ),
      );
  static ButtonStyle get fillPink => ElevatedButton.styleFrom(
        backgroundColor: appTheme.pink700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillTealA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.tealA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlinePrimaryTL13 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray10002,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL25 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightBlue400Ea,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL26 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.teal5001,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL261 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.pink500,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL29 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightBlue400Ea,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL35 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightBlue400Ea,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              35.h,
            ),
            bottomLeft: Radius.circular(
              35.h,
            ),
            bottomRight: Radius.circular(
              35.h,
            ),
          ),
        ),
      );
  static ButtonStyle get outlinePrimaryTL44 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.cyan300,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(44.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL45 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.purple300F7,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              45.h,
            ),
            bottomRight: Radius.circular(
              45.h,
            ),
          ),
        ),
      );
  static ButtonStyle get outlinePrimaryRed => OutlinedButton.styleFrom(
    backgroundColor: Colors.red, // Change this to the desired red color
    side: BorderSide(
      color: theme.colorScheme.primary,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(26.h),
    ),
  );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
// Add this style for a red outlined button

