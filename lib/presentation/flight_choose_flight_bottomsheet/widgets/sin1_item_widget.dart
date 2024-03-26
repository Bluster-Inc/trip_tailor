import '../models/sin1_item_model.dart';
import '../controller/flight_choose_flight_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Sin1ItemWidget extends StatelessWidget {
  Sin1ItemWidget(
    this.sin1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sin1ItemModel sin1ItemModelObj;

  var controller = Get.find<FlightChooseFlightController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgQatarAirwaysSvg,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 4.v,
                  bottom: 2.v,
                ),
                child: Obx(
                  () => Text(
                    sin1ItemModelObj.title!.value,
                    style: CustomTextStyles.labelLargeGray900_1,
                  ),
                ),
              ),
              Spacer(),
              Obx(
                () => Text(
                  sin1ItemModelObj.price!.value,
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
                      sin1ItemModelObj.time!.value,
                      style: CustomTextStyles.titleSmallGray900_2,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildSIN(),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSettingsBlueGray100,
                height: 6.v,
                margin: EdgeInsets.only(
                  left: 26.h,
                  top: 18.v,
                  bottom: 22.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAirplaneBlueGray30001,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 9.v,
                  bottom: 13.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBarcode,
                height: 6.v,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 18.v,
                  bottom: 22.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Column(
                  children: [
                    Obx(
                      () => Text(
                        sin1ItemModelObj.time1!.value,
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
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckBlueGray80001,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Obx(
                  () => Text(
                    sin1ItemModelObj.label!.value,
                    style: CustomTextStyles.labelLargeBluegray80001Bold,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckBlueGray80001,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(left: 12.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Obx(
                  () => Text(
                    sin1ItemModelObj.label1!.value,
                    style: CustomTextStyles.labelLargeBluegray80001Bold,
                  ),
                ),
              ),
              Spacer(),
              Obx(
                () => Text(
                  sin1ItemModelObj.label2!.value,
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
