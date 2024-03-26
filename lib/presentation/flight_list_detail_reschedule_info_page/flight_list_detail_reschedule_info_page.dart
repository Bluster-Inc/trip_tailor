import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/flight_list_detail_reschedule_info_controller.dart';
import 'models/flight_list_detail_reschedule_info_model.dart';

class FlightListDetailRescheduleInfoPage extends StatelessWidget {
  FlightListDetailRescheduleInfoPage({Key? key})
      : super(
          key: key,
        );

  FlightListDetailRescheduleInfoController controller = Get.put(
      FlightListDetailRescheduleInfoController(
          FlightListDetailRescheduleInfoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCard(),
                      SizedBox(height: 28.v),
                      Text(
                        "msg_other_important".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 10.v),
                      Container(
                        width: 301.h,
                        margin: EdgeInsets.only(
                          left: 7.h,
                          right: 18.h,
                        ),
                        child: Text(
                          "msg_the_use_promo_code".tr,
                          maxLines: 8,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge!.copyWith(
                            height: 1.70,
                          ),
                        ),
                      ),
                      Spacer(),
                      _buildHeader(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard() {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                child: Text(
                  "lbl_qatar_airways".tr,
                  style: CustomTextStyles.labelLargeGray900_1,
                ),
              ),
              Spacer(),
              Text(
                "lbl_744".tr,
                style: CustomTextStyles.titleMedium18,
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_11_05_pm".tr,
                    style: CustomTextStyles.titleSmallGray900_2,
                  ),
                  SizedBox(height: 7.v),
                  CustomElevatedButton(
                    height: 22.v,
                    width: 42.h,
                    text: "lbl_sin".tr,
                    buttonStyle: CustomButtonStyles.fillGrayTL6,
                    buttonTextStyle:
                        CustomTextStyles.labelMediumPlusJakartaSansPrimary,
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSettingsBlueGray100,
                height: 6.v,
                margin: EdgeInsets.only(
                  left: 26.h,
                  top: 18.v,
                  bottom: 21.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAirplaneBlueGray30001,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 9.v,
                  bottom: 12.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBarcode,
                height: 6.v,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 18.v,
                  bottom: 21.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Column(
                  children: [
                    Text(
                      "lbl_10_30_am".tr,
                      style: CustomTextStyles.titleSmallGray900_2,
                    ),
                    SizedBox(height: 7.v),
                    CustomElevatedButton(
                      height: 22.v,
                      width: 44.h,
                      text: "lbl_lhr".tr,
                      buttonStyle: CustomButtonStyles.fillGrayTL6,
                      buttonTextStyle:
                          CustomTextStyles.labelMediumPlusJakartaSansPrimary,
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Divider(),
          SizedBox(height: 17.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckBlueGray80001,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_reschedule_available".tr,
                  style: CustomTextStyles.labelLargeBluegray80001Bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "lbl_744_00".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownBlueGray30001,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_get".tr,
                      style: CustomTextStyles.labelLargeff6b7280,
                    ),
                    TextSpan(
                      text: "lbl_10_000_points".tr,
                      style: CustomTextStyles.labelLargee816d4e9,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        CustomElevatedButton(
          width: 159.h,
          text: "lbl_select".tr,
        ),
      ],
    );
  }
}
