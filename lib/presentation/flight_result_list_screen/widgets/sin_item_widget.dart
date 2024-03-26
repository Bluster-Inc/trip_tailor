import '../models/sin_item_model.dart';
import '../controller/flight_result_list_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class SinItemWidget extends StatelessWidget {
  SinItemWidget(
    this.sinItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SinItemModel sinItemModelObj;

  var controller = Get.find<FlightResultListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBluegray1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: sinItemModelObj.flyEmirates!.value,
                  height: 20.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
                child: Obx(
                  () => Text(
                    sinItemModelObj.title!.value,
                    style: CustomTextStyles.labelLargeGray900_1,
                  ),
                ),
              ),
              Spacer(),
              Obx(
                () => Text(
                  sinItemModelObj.price!.value,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      sinItemModelObj.time!.value,
                      style: CustomTextStyles.titleSmallGray900_2,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildSIN(),
                ],
              ),
              Obx(
                () => CustomImageView(
                  imagePath: sinItemModelObj.flyEmirates1!.value,
                  height: 6.v,
                  margin: EdgeInsets.only(
                    left: 26.h,
                    top: 18.v,
                    bottom: 22.v,
                  ),
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: sinItemModelObj.flyEmirates2!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 9.v,
                    bottom: 13.v,
                  ),
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: sinItemModelObj.flyEmirates3!.value,
                  height: 6.v,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 18.v,
                    bottom: 22.v,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Column(
                  children: [
                    Obx(
                      () => Text(
                        sinItemModelObj.time1!.value,
                        style: CustomTextStyles.titleSmallGray900_2,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildLHR(),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 34.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  sinItemModelObj.distance!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                margin: EdgeInsets.only(
                  left: 6.h,
                  top: 5.v,
                  bottom: 6.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Obx(
                  () => Text(
                    sinItemModelObj.time2!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              Spacer(),
              Obx(
                () => Text(
                  sinItemModelObj.transitCounter!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSIN() {
    return CustomElevatedButton(
      height: 22.v,
      width: 42.h,
      text: "lbl_sin".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL6,
      buttonTextStyle: CustomTextStyles.labelMediumPlusJakartaSansPrimary,
    );
  }

  /// Section Widget
  Widget _buildLHR() {
    return CustomElevatedButton(
      height: 22.v,
      width: 44.h,
      text: "lbl_lhr".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL6,
      buttonTextStyle: CustomTextStyles.labelMediumPlusJakartaSansPrimary,
      alignment: Alignment.centerRight,
    );
  }
}
