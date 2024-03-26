import '../models/list25_item_model.dart';
import '../controller/link_account_social_media_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List25ItemWidget extends StatelessWidget {
  List25ItemWidget(
    this.list25ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List25ItemModel list25ItemModelObj;

  var controller = Get.find<LinkAccountSocialMediaController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillGrayTL12,
              child: CustomImageView(
                imagePath: list25ItemModelObj.iconButton!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 6.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list25ItemModelObj.title!.value,
                    style: CustomTextStyles.titleSmallGray900,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    list25ItemModelObj.title1!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          _buildConnected(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConnected() {
    return CustomElevatedButton(
      height: 24.v,
      width: 69.h,
      text: "lbl_connected".tr,
      margin: EdgeInsets.only(
        left: 26.h,
        top: 12.v,
        bottom: 12.v,
      ),
      buttonStyle: CustomButtonStyles.fillLightBlue,
      buttonTextStyle: CustomTextStyles.labelMediumPrimaryBold,
    );
  }
}
