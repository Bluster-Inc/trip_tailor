import '../models/link_item_model.dart';
import '../controller/link_account_payment_method_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class LinkItemWidget extends StatelessWidget {
  LinkItemWidget(
    this.linkItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LinkItemModel linkItemModelObj;

  var controller = Get.find<LinkAccountPaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBluegray1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillGrayTL12,
            child: CustomImageView(
              imagePath: ImageConstant.imgLogosPaypal,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_paypal".tr,
                  style: CustomTextStyles.titleSmallGray900,
                ),
                SizedBox(height: 9.v),
                Text(
                  "msg_easier_payment_method".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          _buildLink(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLink() {
    return CustomElevatedButton(
      height: 24.v,
      width: 45.h,
      text: "lbl_link".tr,
      margin: EdgeInsets.symmetric(vertical: 12.v),
      buttonStyle: CustomButtonStyles.fillLightBlue,
      buttonTextStyle: CustomTextStyles.labelMediumPrimaryBold,
    );
  }
}
