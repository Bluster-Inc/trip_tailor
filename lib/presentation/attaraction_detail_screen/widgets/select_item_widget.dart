import '../models/select_item_model.dart';
import '../controller/attaraction_detail_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class SelectItemWidget extends StatelessWidget {
  SelectItemWidget(
    this.selectItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectItemModel selectItemModelObj;

  var controller = Get.find<AttaractionDetailController>();

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
        children: [
          Obx(
            () => Text(
              selectItemModelObj.duration!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowDownBlueGray30001,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    selectItemModelObj.label!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgClockBlueGray30001,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  left: 25.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    selectItemModelObj.duration1!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Divider(),
          SizedBox(height: 11.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.v),
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
