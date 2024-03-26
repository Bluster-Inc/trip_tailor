import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:trip_tailor/widgets/custom_switch.dart';
import 'package:trip_tailor/widgets/custom_text_form_field.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/flight_form_multi_city_controller.dart';
import 'models/flight_form_multi_city_model.dart';

class FlightFormMultiCityPage extends StatelessWidget {
  FlightFormMultiCityPage({Key? key})
      : super(
          key: key,
        );

  FlightFormMultiCityController controller =
      Get.put(FlightFormMultiCityController(FlightFormMultiCityModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 160.v),
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Column(
                children: [
                  _buildForm(),
                  SizedBox(height: 16.v),
                  _buildForm1(),
                  _buildBottomBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBluegray7001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_flight_1".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 13.v),
          _buildInput(
            title: "lbl_from_location".tr,
            title1: "msg_to_destination".tr,
          ),
          SizedBox(height: 15.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineGray200.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpGray6001,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "lbl_departure".tr,
                    style: CustomTextStyles.titleSmallBluegray30001,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_round_trip".tr,
                    style: CustomTextStyles.labelMediumBluegray30001,
                  ),
                ),
                Obx(
                  () => CustomSwitch(
                    margin: EdgeInsets.only(left: 9.h),
                    value: controller.isSelectedSwitch.value,
                    onChange: (value) {
                      controller.isSelectedSwitch.value = value;
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForm1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBluegray7001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_flight_2".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 13.v),
          _buildInput(
            title: "lbl_from_location".tr,
            title1: "msg_to_destination".tr,
          ),
          SizedBox(height: 15.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineGray200.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpGray6001,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "lbl_departure".tr,
                    style: CustomTextStyles.titleSmallBluegray30001,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_round_trip".tr,
                    style: CustomTextStyles.labelMediumBluegray30001,
                  ),
                ),
                Container(
                  height: 20.v,
                  width: 32.h,
                  margin: EdgeInsets.only(left: 9.h),
                  decoration: AppDecoration.fillGray200.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.outlineGrayTL10,
                    alignment: Alignment.centerLeft,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCloseBlueGray30001,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.outlineGrayF,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: CustomTextFormField(
                    controller: controller.searchController,
                    hintText: "lbl_passengers".tr,
                    hintStyle: CustomTextStyles.titleSmallBluegray30001,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(12.h, 14.v, 8.h, 14.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUsers,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 48.v,
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 15.v,
                      right: 30.h,
                      bottom: 15.v,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: CustomTextFormField(
                    controller: controller.searchController1,
                    hintText: "lbl_seat_class".tr,
                    hintStyle: CustomTextStyles.titleSmallBluegray30001,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(12.h, 14.v, 8.h, 14.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTelevisionGray600,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 48.v,
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 15.v,
                      right: 30.h,
                      bottom: 15.v,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_search_flight".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL12,
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildInput({
    required String title,
    required String title1,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAirplaneGray600,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  title,
                  style: CustomTextStyles.titleSmallBluegray30001.copyWith(
                    color: appTheme.blueGray30001,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    bottom: 15.v,
                  ),
                  child: Divider(),
                ),
              ),
              CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.outlineGrayTL16,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSharePrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAirplaneGray60020x20,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  title1,
                  style: CustomTextStyles.titleSmallBluegray30001.copyWith(
                    color: appTheme.blueGray30001,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
