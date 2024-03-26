import 'package:flutter/material.dart';
import 'package:trip_tailor/core/utils/size_utils.dart';
import 'package:trip_tailor/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray30001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodyLargeCyanA100 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.cyanA100,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargeff6b7280 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF6B7280),
      );
  static get bodyMediumBluegray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodyMediumCyanA10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.cyanA10001,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumff6b7280 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF6B7280),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallff6b7280 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF6B7280),
      );
  // Headline text style
  static get headlineLargeGray900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  // Label text style
  static get labelLargeAmber200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber200,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBluegray30001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get labelLargeBluegray30001Bold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray30001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBluegray30001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get labelLargeBluegray80001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get labelLargeBluegray80001Bold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeCyan100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyan100,
      );
  static get labelLargeCyanA100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyanA100,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeCyanA10001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyanA10001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeCyanA100_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyanA100,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelLargeOnPrimaryContainerBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRedA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA200,
      );
  static get labelLargee816d4e9 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XE816D4E9),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeff111827 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF111827),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeff6b7280 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF6B7280),
      );
  static get labelMediumBluegray30001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get labelMediumCyan100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.cyan100,
      );
  static get labelMediumCyanA100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.cyanA100,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelMediumOnPrimaryContainerBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPlusJakartaSans =>
      theme.textTheme.labelMedium!.plusJakartaSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPlusJakartaSansBluegray30001 =>
      theme.textTheme.labelMedium!.plusJakartaSans.copyWith(
        color: appTheme.blueGray30001,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPlusJakartaSansBluegray30001_1 =>
      theme.textTheme.labelMedium!.plusJakartaSans.copyWith(
        color: appTheme.blueGray30001,
      );
  static get labelMediumPlusJakartaSansCyan100 =>
      theme.textTheme.labelMedium!.plusJakartaSans.copyWith(
        color: appTheme.cyan100,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPlusJakartaSansPrimary =>
      theme.textTheme.labelMedium!.plusJakartaSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPlusJakartaSans_1 =>
      theme.textTheme.labelMedium!.plusJakartaSans;
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPrimaryBold => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRedA100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.redA100,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallOnPrimaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  // Title text style
  static get titleLargeff111827 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF111827),
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMedium18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumAmber200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amber200,
      );
  static get titleMediumBlue700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue700,
      );
  static get titleMediumBluegray30001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray30001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumCyanA10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyanA10001,
        fontSize: 18.fSize,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumGray60018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
      );
  static get titleMediumGray600Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumOnPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPlusJakartaSansBluegray30001 =>
      theme.textTheme.titleMedium!.plusJakartaSans.copyWith(
        color: appTheme.blueGray30001,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimaryMedium => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProDisplayOnPrimaryContainer =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediume816d4e9 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XE816D4E9),
      );
  static get titleMediumff111827 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF111827),
        fontSize: 18.fSize,
      );
  static get titleMediumff111827_1 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF111827),
      );
  static get titleMediumfffad998 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFAD998),
      );
  static get titleMediumfffad99818 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFAD998),
        fontSize: 18.fSize,
      );
  static get titleSmallBluegray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray100,
      );
  static get titleSmallBluegray30001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get titleSmallBluegray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
      );
  static get titleSmallBluegray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallCyanA100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyanA100,
      );
  static get titleSmallCyanA100Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyanA100,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallGray900_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRedA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA200,
      );
  static get titleSmalle816d4e9 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XE816D4E9),
        fontWeight: FontWeight.w700,
      );
  static get titleSmalle816d4e9_1 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XE816D4E9),
      );
  static get titleSmallff111827 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF111827),
      );
  static get titleSmallff4b5563 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF4B5563),
      );
  static get titleSmallff6b7280 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF6B7280),
      );
}

extension on TextStyle {
  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }
}
