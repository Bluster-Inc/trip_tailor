import 'package:trip_tailor/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/onboarding_five_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingFiveScreen extends GetWidget<OnboardingFiveController> {
  const OnboardingFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.gray900.withOpacity(0.22),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 56.v),
          decoration: BoxDecoration(
            color: appTheme.gray900.withOpacity(0.22),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup883,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 24.h,
              top: 68.v,
              right: 24.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSkip(),
                SizedBox(height: 41.v),
                Container(
                  width: 282.h,
                  margin: EdgeInsets.only(right: 44.h),
                  child: Text(
                    "msg_unlock_full_member".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineLarge!.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                Container(
                  width: 243.h,
                  margin: EdgeInsets.only(right: 83.h),
                  child: Text(
                    "msg_book_check_in_and".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumOnPrimaryContainerMedium
                        .copyWith(
                      height: 1.65,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildGetStarted(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSkip() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomOutlinedButton(
          height: 32.v,
          width: 61.h,
          text: "lbl_skip".tr,
          buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
          buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer_1,
        ),
        Container(
          height: 5.v,
          margin: EdgeInsets.only(
            top: 13.v,
            bottom: 14.v,
          ),
          child: AnimatedSmoothIndicator(
            activeIndex: 0,
            count: 5,
            effect: ScrollingDotsEffect(
              spacing: 8,
              activeDotColor:
                  theme.colorScheme.onPrimaryContainer.withOpacity(1),
              dotColor: theme.colorScheme.onPrimaryContainer.withOpacity(0.3),
              dotHeight: 5.v,
              dotWidth: 22.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGetStarted() {
    return CustomElevatedButton(
      text: "lbl_get_started".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 50.v,
      ),
    );
  }
}
