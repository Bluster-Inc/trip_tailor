import '../models/button_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class ButtonItemWidget extends StatelessWidget {
  ButtonItemWidget(
    this.buttonItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ButtonItemModel buttonItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 15.v,
          right: 12.h,
          bottom: 15.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          buttonItemModelObj.filter!.value,
          style: TextStyle(
            color: (buttonItemModelObj.isSelected?.value ?? false)
                ? appTheme.gray900
                : theme.colorScheme.onPrimaryContainer.withOpacity(1),
            fontSize: 14.fSize,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgTelevision,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected: (buttonItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.primary,
        selectedColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        shape: (buttonItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray200,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
        onSelected: (value) {
          buttonItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
