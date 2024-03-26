import 'package:trip_tailor/widgets/custom_radio_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/message_filter_controller.dart';

class MessageFilterBottomsheet extends StatelessWidget {
  MessageFilterBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  MessageFilterController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL35,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 8.v,
            width: 40.h,
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          _buildLabel(),
          SizedBox(height: 16.v),
          Divider(),
          SizedBox(height: 26.v),
          _buildGroup1253(),
          SizedBox(height: 26.v),
          CustomElevatedButton(
            text: "lbl_apply".tr,
          ),
          SizedBox(height: 26.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLabel() {
    return Obx(
      () => CustomRadioButton(
        width: 327.h,
        text: "lbl_filter_by".tr,
        value: "lbl_filter_by".tr,
        groupValue: controller.radioGroup.value,
        textStyle: CustomTextStyles.titleMedium18_1,
        isRightCheck: true,
        onChange: (value) {
          controller.radioGroup.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup1253() {
    return Obx(
      () => Column(
        children: [
          CustomRadioButton(
            width: 327.h,
            text: "lbl_all_chat".tr,
            value: controller.messageFilterModelObj.value.radioList.value[0],
            groupValue: controller.radioGroup1.value,
            isRightCheck: true,
            onChange: (value) {
              controller.radioGroup1.value = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 37.v),
            child: CustomRadioButton(
              width: 327.h,
              text: "lbl_already_read".tr,
              value: controller.messageFilterModelObj.value.radioList.value[1],
              groupValue: controller.radioGroup1.value,
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup1.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 36.v),
            child: CustomRadioButton(
              width: 327.h,
              text: "lbl_unread".tr,
              value: controller.messageFilterModelObj.value.radioList.value[2],
              groupValue: controller.radioGroup1.value,
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup1.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 37.v),
            child: CustomRadioButton(
              width: 327.h,
              text: "lbl_unanswered".tr,
              value: controller.messageFilterModelObj.value.radioList.value[3],
              groupValue: controller.radioGroup1.value,
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup1.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
