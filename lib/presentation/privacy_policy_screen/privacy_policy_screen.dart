import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/privacy_policy_controller.dart';

// ignore_for_file: must_be_immutable
class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildThirtyFour(),
              SizedBox(height: 27.v),
              Container(
                width: 313.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 37.h,
                ),
                child: Text(
                  "msg_traveline_inc".tr,
                  maxLines: 9,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallBluegray700.copyWith(
                    height: 1.70,
                  ),
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_privacy_statement".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 319.h,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    right: 31.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_this_is_a_summary2".tr,
                          style: CustomTextStyles.titleSmallff4b5563,
                        ),
                        TextSpan(
                          text: "msg_click_here_or_scroll".tr,
                          style: CustomTextStyles.titleSmalle816d4e9_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 323.h,
                  margin: EdgeInsets.only(
                    left: 24.h,
                    right: 27.h,
                  ),
                  child: Text(
                    "msg_this_privacy_statement".tr,
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBluegray700.copyWith(
                      height: 1.70,
                    ),
                  ),
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
  Widget _buildThirtyFour() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.fromLTRB(24.h, 20.v, 24.h, 19.v),
            decoration: AppDecoration.outlineLightblueA200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_traveline".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer18,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMenu2,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Container(
            width: 213.h,
            margin: EdgeInsets.only(left: 24.h),
            child: Text(
              "msg_privacy_and_cookies".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.headlineSmallOnPrimaryContainer.copyWith(
                height: 1.30,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              "msg_last_update_september".tr,
              style: CustomTextStyles.labelLargeCyan100,
            ),
          ),
        ],
      ),
    );
  }
}
