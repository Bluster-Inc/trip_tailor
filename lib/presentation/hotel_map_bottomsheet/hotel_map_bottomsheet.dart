import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'package:trip_tailor/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_map_controller.dart';

class HotelMapBottomsheet extends StatelessWidget {
  HotelMapBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  HotelMapController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 8.v,
            width: 40.h,
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "lbl_los_angeles".tr,
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.outlineGray2002,
            child: Row(
              children: [
                CustomOutlinedButton(
                  height: 48.v,
                  width: 187.h,
                  text: "lbl_filter".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlineGray1,
                  buttonTextStyle: theme.textTheme.titleMedium!,
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgCalculator,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 14.v),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8.h, 14.v, 63.h, 13.v),
                  child: Text(
                    "lbl_list".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
