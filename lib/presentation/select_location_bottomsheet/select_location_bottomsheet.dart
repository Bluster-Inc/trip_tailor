import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/select_location_controller.dart';

class SelectLocationBottomsheet extends StatelessWidget {
  SelectLocationBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectLocationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL35,
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
          CustomSearchView(
            controller: controller.searchController,
            hintText: "lbl_search_location".tr,
            hintStyle: theme.textTheme.bodyLarge!,
          ),
          SizedBox(height: 27.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_current_location".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 18.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillLightBlue,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "lbl_noe_valley".tr,
                              style: CustomTextStyles.titleSmallGray900,
                            ),
                          ),
                          Container(
                            height: 6.adaptSize,
                            width: 6.adaptSize,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              top: 5.v,
                              bottom: 7.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_0_25_m".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "msg_san_francisco_california".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 10.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: IconButtonStyleHelper.fillLightBlue,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "lbl_the_castro".tr,
                            style: CustomTextStyles.titleSmallGray900,
                          ),
                          Container(
                            height: 6.adaptSize,
                            width: 6.adaptSize,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              top: 5.v,
                              bottom: 5.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(
                                3.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_3_5_km".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        "msg_san_francisco_california".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 10.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 42.v),
        ],
      ),
    );
  }
}
