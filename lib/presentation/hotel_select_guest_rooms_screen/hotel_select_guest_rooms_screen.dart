import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title_edittext.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_select_guest_rooms_controller.dart';

// ignore_for_file: must_be_immutable
class HotelSelectGuestRoomsScreen
    extends GetWidget<HotelSelectGuestRoomsController> {
  const HotelSelectGuestRoomsScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 44.v,
          ),
          child: Column(
            children: [
              _buildItem(),
              _buildItem1(),
              _buildItem2(),
              SizedBox(height: 4.v),
              _buildItem3(),
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirm(),
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
              text: "lbl_guest_rooms".tr,
              margin: EdgeInsets.only(right: 164.h),
            ),
            SizedBox(height: 11.v),
            AppbarTitleEdittext(
              hintText: "lbl_1_room_1_guest".tr,
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

  /// Section Widget
  Widget _buildItem() {
    return Container(
      padding: EdgeInsets.only(
        top: 28.v,
        bottom: 27.v,
      ),
      decoration: AppDecoration.outlineGray2001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_rooms".tr,
            style: CustomTextStyles.titleMedium18,
          ),
          Spacer(),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(4.h),
            decoration: IconButtonStyleHelper.outlineBlueGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgMinus,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "lbl_1".tr,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItem1() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineGray2001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_adults".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 7.v),
                Text(
                  "msg_adults_13_or_above".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 11.v),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgMinus,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 12.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_1".tr,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItem2() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineGray2001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_childreen".tr,
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_ages_2_12".tr,
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 11.v),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgMinusBlueGray30001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 12.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_0".tr,
              style: CustomTextStyles.titleMediumGray60018,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItem3() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineGray2001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_infants".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_under_2".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 11.v),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgMinusBlueGray30001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 12.v,
              bottom: 12.v,
            ),
            child: Text(
              "lbl_0".tr,
              style: CustomTextStyles.titleMediumGray60018,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirm() {
    return CustomElevatedButton(
      text: "lbl_confirm".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 42.v,
      ),
    );
  }
}
