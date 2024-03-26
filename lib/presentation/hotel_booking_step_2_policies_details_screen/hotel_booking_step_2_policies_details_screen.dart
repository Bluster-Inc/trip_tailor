import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_booking_step_2_policies_details_controller.dart';

// ignore_for_file: must_be_immutable
class HotelBookingStep2PoliciesDetailsScreen
    extends GetWidget<HotelBookingStep2PoliciesDetailsController> {
  const HotelBookingStep2PoliciesDetailsScreen({Key? key})
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
            vertical: 15.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_cancelation_policy2".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 17.v),
              Container(
                width: 317.h,
                margin: EdgeInsets.only(right: 9.h),
                child: Text(
                  "msg_before_you_book".tr,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.70,
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Text(
                "lbl_cancel_by".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 17.v),
              _buildInputRequest(
                time: "msg_sep_04_12_00_pm".tr,
                title: "msg_full_refund_get".tr,
              ),
              SizedBox(height: 16.v),
              _buildInputRequest(
                time: "msg_sep_05_12_00_pm".tr,
                title: "lbl_no_refund".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAgree(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorGray900,
        margin: EdgeInsets.fromLTRB(30.h, 22.v, 333.h, 22.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildAgree() {
    return CustomElevatedButton(
      text: "lbl_agree".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 42.v,
      ),
    );
  }

  /// Common widget
  Widget _buildInputRequest({
    required String time,
    required String title,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCalendarBlueGray30001,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 3.v,
                ),
                child: Text(
                  time,
                  style: CustomTextStyles.titleSmallGray900_2.copyWith(
                    color: appTheme.gray900,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 13.v),
          Divider(),
          Divider(),
          SizedBox(height: 14.v),
          Text(
            title,
            style: CustomTextStyles.titleSmallGray900_2.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ],
      ),
    );
  }
}
