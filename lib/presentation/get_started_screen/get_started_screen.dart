import 'package:trip_tailor/widgets/custom_outlined_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/get_started_controller.dart';

// ignore_for_file: must_be_immutable
class GetStartedScreen extends GetWidget<GetStartedController> {
  const GetStartedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        body: SizedBox(
          width: double.maxFinite,
          child: SizedBox(
            height: SizeUtils.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  width: 375.h,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                      vertical: 35.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "msg_get_the_full_experience".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 13.v),
                        Container(
                          width: 286.h,
                          margin: EdgeInsets.only(
                            left: 19.h,
                            right: 20.h,
                          ),
                          child: Text(
                            "msg_track_prices_make".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall!.copyWith(
                              height: 1.70,
                            ),
                          ),
                        ),
                        SizedBox(height: 19.v),
                        _buildContinueWithApple(),
                        SizedBox(height: 16.v),
                        _buildContinueWithGoogle(),
                        SizedBox(height: 16.v),
                        _buildContinueWithFacebook(),
                        SizedBox(height: 16.v),
                        _buildContinueWithEmail(),
                        SizedBox(height: 22.v),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueWithApple() {
    return CustomOutlinedButton(
      text: "msg_continue_with_apple".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgAntdesignapplefilled,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueWithGoogle() {
    return CustomOutlinedButton(
      text: "msg_continue_with_google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFlatcoloriconsgoogle,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueWithFacebook() {
    return CustomOutlinedButton(
      text: "msg_continue_with_facebook".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgLogosfacebook,
          height: 22.adaptSize,
          width: 22.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueWithEmail() {
    return CustomElevatedButton(
      text: "msg_continue_with_email".tr,
    );
  }
}
