import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray10001,
                  borderRadius: BorderRadius.circular(20.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillLightBlueTL28 => BoxDecoration(
        color: appTheme.lightBlue50,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(14.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayTL16 => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainerTL20 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get outlineGrayTL22 => BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGrayTL12 => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray80001,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get outlineGrayTL10 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 2.h,
        ),
      );
  static BoxDecoration get fillPrimaryTL20 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillGrayTL8 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber200,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get outlineAmber => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: appTheme.amber200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainerTL201 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.02),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillAmberTL12 => BoxDecoration(
        color: appTheme.amber200,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillPrimaryTL12 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA20001,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillBlueGrayTL28 => BoxDecoration(
        color: appTheme.blueGray80001,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillGrayTL81 => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get outlineOnPrimaryContainerTL202 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 3.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onErrorContainer.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillLightBlueATL8 => BoxDecoration(
        color: appTheme.lightBlueA20001,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillPrimaryTL8 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get outlineOnPrimaryContainerTL12 => BoxDecoration(
        color: appTheme.gray90001,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get fillBlueGrayTL24 => BoxDecoration(
        color: appTheme.blueGray30001,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineGrayTL101 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
}
