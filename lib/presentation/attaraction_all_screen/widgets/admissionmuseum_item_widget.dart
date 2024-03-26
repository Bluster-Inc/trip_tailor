import '../models/admissionmuseum_item_model.dart';
import '../controller/attaraction_all_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class AdmissionmuseumItemWidget extends StatelessWidget {
  AdmissionmuseumItemWidget(
    this.admissionmuseumItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AdmissionmuseumItemModel admissionmuseumItemModelObj;

  var controller = Get.find<AttaractionAllController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Container(
            height: 96.v,
            width: 88.h,
            decoration: AppDecoration.gradientGrayToGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath:
                        admissionmuseumItemModelObj.admissionMuseum!.value,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 10.v,
                      right: 10.h,
                    ),
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath:
                        admissionmuseumItemModelObj.admissionMuseum1!.value,
                    width: 88.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 5.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  admissionmuseumItemModelObj.title!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 14.v),
              Row(
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: admissionmuseumItemModelObj.hollywood!.value,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 3.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      top: 1.v,
                    ),
                    child: Obx(
                      () => Text(
                        admissionmuseumItemModelObj.label!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: admissionmuseumItemModelObj.hollywood1!.value,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        top: 1.v,
                        bottom: 3.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      bottom: 1.v,
                    ),
                    child: Obx(
                      () => Text(
                        admissionmuseumItemModelObj.label1!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_252".tr,
                      style: CustomTextStyles.titleMediumff111827_1,
                    ),
                    TextSpan(
                      text: "lbl_adults2".tr,
                      style: CustomTextStyles.titleSmallff6b7280,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
