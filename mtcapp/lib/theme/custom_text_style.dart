import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.53),
      );
  static get titleLargeBlack90001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeBlack90084 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90084,
      );
  static get titleLargeBluegray60083 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray60083,
      );
  static get titleLargeDeeppurple50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurple50,
      );
  static get titleLargeDeeppurple800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurple800,
      );
  static get titleLargeGray100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray100,
      );
  static get titleLargeGray10001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray10001,
      );
  static get titleLargeGray200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray200,
      );
  static get titleLargeGray50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get titleLargeIndigo50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo50,
      );
  static get titleLargeOnError => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(0.56),
      );
  static get titleLargeOnError_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimary_2 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
      );
  static get titleLargePrimary_3 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.51),
      );
  static get titleLargePrimary_4 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.58),
      );
  static get titleLargePrimary_5 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.55),
      );
  static get titleLargeRed900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red900.withOpacity(0.56),
      );
  static get titleLargeRed900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red900,
      );
  static get titleLargeRedA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA70001,
      );
  static get titleLargeTeal100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal100,
      );
  static get titleLargeTeal10001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal10001,
      );
  static get titleLargeTeal10001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.teal10001,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
