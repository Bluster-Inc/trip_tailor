import 'package:trip_tailor/widgets/custom_radio_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/notification_sort_controller.dart';

class NotificationSortBottomsheet extends StatelessWidget {
  NotificationSortBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationSortController controller;

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
          SizedBox(height: 20.v),
          Obx(
            () => CustomRadioButton(
              width: 322.h,
              text: "lbl_sort_by".tr,
              value: "lbl_sort_by".tr,
              groupValue: controller.radioGroup.value,
              textStyle: CustomTextStyles.titleMedium18_1,
              isRightCheck: true,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          SizedBox(height: 16.v),
          Divider(),
          SizedBox(height: 26.v),
          Obx(
            () => Column(
              children: [
                CustomRadioButton(
                  width: 327.h,
                  text: "lbl_all_status".tr,
                  value: controller
                      .notificationSortModelObj.value.radioList.value[0],
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
                    value: controller
                        .notificationSortModelObj.value.radioList.value[1],
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
                    value: controller
                        .notificationSortModelObj.value.radioList.value[2],
                    groupValue: controller.radioGroup1.value,
                    isRightCheck: true,
                    onChange: (value) {
                      controller.radioGroup1.value = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 42.v),
          CustomElevatedButton(
            text: "lbl_apply".tr,
          ),
          SizedBox(height: 26.v),
        ],
      ),
    );
  }
}
