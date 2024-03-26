import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/my_booking_empty_controller.dart';
import 'models/my_booking_empty_model.dart';

class MyBookingEmptyPage extends StatelessWidget {
  MyBookingEmptyPage({Key? key})
      : super(
          key: key,
        );

  MyBookingEmptyController controller =
      Get.put(MyBookingEmptyController(MyBookingEmptyModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 72.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 29.h),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgIllustrationGray10001120x120,
                        height: 120.adaptSize,
                        width: 120.adaptSize,
                        radius: BorderRadius.circular(
                          60.h,
                        ),
                      ),
                      SizedBox(height: 35.v),
                      Text(
                        "msg_no_refund_request".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 9.v),
                      Container(
                        width: 281.h,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          right: 18.h,
                        ),
                        child: Text(
                          "msg_after_requesting".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumGray600Medium
                              .copyWith(
                            height: 1.65,
                          ),
                        ),
                      ),
                      Spacer(),
                      _buildMenu(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUserBlueGray3000124x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            SizedBox(height: 6.v),
            Text(
              "lbl_home".tr,
              style: CustomTextStyles.labelMediumBluegray30001,
            ),
          ],
        ),
        Spacer(
          flex: 27,
        ),
        _buildItemMenu(
          contrast: ImageConstant.imgNavExplore,
          label: "lbl_explore".tr,
        ),
        Spacer(
          flex: 23,
        ),
        Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFilePrimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            SizedBox(height: 7.v),
            Text(
              "lbl_booking".tr,
              style: CustomTextStyles.labelMediumPrimaryBold,
            ),
          ],
        ),
        Spacer(
          flex: 23,
        ),
        _buildItemMenu(
          contrast: ImageConstant.imgNavWishlist,
          label: "lbl_wishlist".tr,
        ),
        Spacer(
          flex: 26,
        ),
        Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgNavProfile,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            SizedBox(height: 6.v),
            Text(
              "lbl_profile".tr,
              style: CustomTextStyles.labelMediumBluegray30001,
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildItemMenu({
    required String contrast,
    required String label,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: contrast,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        SizedBox(height: 6.v),
        Text(
          label,
          style: CustomTextStyles.labelMediumBluegray30001.copyWith(
            color: appTheme.blueGray30001,
          ),
        ),
      ],
    );
  }
}
