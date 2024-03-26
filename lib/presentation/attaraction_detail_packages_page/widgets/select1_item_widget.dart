import '../models/select1_item_model.dart';
import '../controller/attaraction_detail_packages_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Select1ItemWidget extends StatelessWidget {
  Select1ItemWidget(
    this.select1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Select1ItemModel select1ItemModelObj;

  var controller = Get.find<AttaractionDetailPackagesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBluegray1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              select1ItemModelObj.duration!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowDownBlueGray30001,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    select1ItemModelObj.label!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgClockBlueGray30001,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(left: 25.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    select1ItemModelObj.duration1!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Divider(),
          SizedBox(height: 11.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 6.v,
                  bottom: 5.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_255".tr,
                        style: CustomTextStyles.titleMediumff111827,
                      ),
                      TextSpan(
                        text: "lbl_adults2".tr,
                        style: CustomTextStyles.bodySmallff6b7280,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              _buildSelect(),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelect() {
    return CustomElevatedButton(
      height: 32.v,
      width: 100.h,
      text: "lbl_select".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL8,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainerBold,
    );
  }
}
