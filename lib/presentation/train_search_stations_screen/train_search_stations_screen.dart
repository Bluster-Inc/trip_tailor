import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/train_search_stations_controller.dart';

// ignore_for_file: must_be_immutable
class TrainSearchStationsScreen
    extends GetWidget<TrainSearchStationsController> {
  const TrainSearchStationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 71.v,
            right: 24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomIconButton(
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    padding: EdgeInsets.all(12.h),
                    decoration: IconButtonStyleHelper.fillGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLinkedinGray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_los_angeles".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "msg_california_united".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 60.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCalculatorGray900,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_union_station_ca".tr,
                        style: CustomTextStyles.titleSmallGray900_2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 60.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCalculatorGray900,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_metrolink_station".tr,
                        style: CustomTextStyles.titleSmallGray900_2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCalculatorGray900,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_chartsworth_station".tr,
                        style: CustomTextStyles.titleSmallGray900_2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 60.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCalculatorGray900,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "msg_northridge_station".tr,
                        style: CustomTextStyles.titleSmallGray900_2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 112.v,
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            AppbarSubtitleSeven(
              text: "lbl_location".tr,
              margin: EdgeInsets.only(right: 208.h),
            ),
            SizedBox(height: 11.v),
            AppbarTitleSearchviewOne(
              hintText: "lbl_los_angeles".tr,
              controller: controller.searchController,
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleSix(
          text: "lbl_clear".tr,
          margin: EdgeInsets.fromLTRB(24.h, 59.v, 24.h, 35.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
