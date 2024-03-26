import 'package:trip_tailor/widgets/custom_outlined_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/flight_confirm_to_payment_controller.dart';

class FlightConfirmToPaymentBottomsheet extends StatelessWidget {
  FlightConfirmToPaymentBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  FlightConfirmToPaymentController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL35,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80.adaptSize,
            width: 80.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.fillLightBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgUserPrimary,
              height: 36.v,
              alignment: Alignment.bottomCenter,
            ),
          ),
          SizedBox(height: 28.v),
          Text(
            "msg_are_you_booking".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 10.v),
          Container(
            width: 254.h,
            margin: EdgeInsets.symmetric(horizontal: 36.h),
            child: Text(
              "msg_before_you_proceed".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall!.copyWith(
                height: 1.70,
              ),
            ),
          ),
          SizedBox(height: 27.v),
          CustomOutlinedButton(
            height: 48.v,
            text: "lbl_check_again".tr,
            buttonStyle: CustomButtonStyles.outlineGrayTL12,
            buttonTextStyle: CustomTextStyles.titleSmallGray90001,
          ),
          SizedBox(height: 12.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_yes_continue".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL12,
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
