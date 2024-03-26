import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:trip_tailor/widgets/custom_text_form_field.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/flight_form_one_way_controller.dart';
import 'models/flight_form_one_way_model.dart';

class FlightFormOneWayPage extends StatelessWidget {
  FlightFormOneWayPage({Key? key})
      : super(
          key: key,
        );

  FlightFormOneWayController controller =
      Get.put(FlightFormOneWayController(FlightFormOneWayModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Column(
                children: [
                  _buildForm(),
                  SizedBox(height: 27.v),
                  _buildSIN(),
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
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
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
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "lbl_from_location".tr,
                        style: CustomTextStyles.titleSmallBluegray30001,
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
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "msg_to_destination".tr,
                        style: CustomTextStyles.titleSmallBluegray30001,
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpGray6001,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
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
                      margin: EdgeInsets.fromLTRB(12.h, 14.v, 10.h, 14.v),
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
                      right: 21.h,
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
                      margin: EdgeInsets.fromLTRB(12.h, 14.v, 10.h, 14.v),
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
                      right: 27.h,
                      bottom: 15.v,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
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

  /// Section Widget
  Widget _buildRecentActivity() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_recent_activity".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                Text(
                  "lbl_view_more".tr,
                  style: CustomTextStyles.titleMediumPrimaryMedium,
                ),
              ],
            ),
            SizedBox(height: 16.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.outlineBluegray1001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEmiratesAirline,
                        height: 20.v,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_fly_emirates".tr,
                          style: CustomTextStyles.labelLargeGray900_1,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "lbl_674".tr,
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_11_05_pm".tr,
                            style: CustomTextStyles.titleSmallGray900_2,
                          ),
                          SizedBox(height: 7.v),
                          CustomElevatedButton(
                            height: 22.v,
                            width: 42.h,
                            text: "lbl_sin".tr,
                            buttonStyle: CustomButtonStyles.fillGrayTL6,
                            buttonTextStyle: CustomTextStyles
                                .labelMediumPlusJakartaSansPrimary,
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsBlueGray100,
                        height: 6.v,
                        margin: EdgeInsets.only(
                          left: 26.h,
                          top: 18.v,
                          bottom: 21.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgAirplaneBlueGray30001,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 9.v,
                          bottom: 12.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgBarcode,
                        height: 6.v,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 18.v,
                          bottom: 21.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Column(
                          children: [
                            Text(
                              "lbl_08_05_am".tr,
                              style: CustomTextStyles.titleSmallGray900_2,
                            ),
                            SizedBox(height: 7.v),
                            CustomElevatedButton(
                              height: 22.v,
                              width: 44.h,
                              text: "lbl_lhr".tr,
                              buttonStyle: CustomButtonStyles.fillGrayTL6,
                              buttonTextStyle: CustomTextStyles
                                  .labelMediumPlusJakartaSansPrimary,
                              alignment: Alignment.centerRight,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 17.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "msg_16h_55m_1_stop".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      Container(
                        height: 4.adaptSize,
                        width: 4.adaptSize,
                        margin: EdgeInsets.only(
                          left: 7.h,
                          top: 5.v,
                          bottom: 6.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(
                            2.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_1h_25m_in_cdg".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "lbl_1_transit".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSIN() {
    return SizedBox(
      height: 244.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _buildRecentActivity(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 98.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 1.11),
                  end: Alignment(0.5, 0.09),
                  colors: [
                    theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    theme.colorScheme.onPrimaryContainer,
                    theme.colorScheme.onPrimaryContainer.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
