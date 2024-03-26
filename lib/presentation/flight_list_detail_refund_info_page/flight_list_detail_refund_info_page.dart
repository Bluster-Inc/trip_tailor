import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/flight_list_detail_refund_info_controller.dart';
import 'models/flight_list_detail_refund_info_model.dart';

class FlightListDetailRefundInfoPage extends StatelessWidget {
  FlightListDetailRefundInfoPage({Key? key})
      : super(
          key: key,
        );

  FlightListDetailRefundInfoController controller = Get.put(
      FlightListDetailRefundInfoController(
          FlightListDetailRefundInfoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCard(),
                    SizedBox(height: 27.v),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "msg_refund_information".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 266.h,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        right: 85.h,
                      ),
                      child: Text(
                        "msg_refund_fees_are".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelLarge!.copyWith(
                          height: 1.70,
                        ),
                      ),
                    ),
                    SizedBox(height: 14.v),
                    _buildRefundDetail(),
                    SizedBox(height: 28.v),
                    _buildSelect(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 23.h),
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineBluegray1001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
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
                    top: 3.v,
                  ),
                  child: Text(
                    "lbl_qatar_airways".tr,
                    style: CustomTextStyles.labelLargeGray900_1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Text(
                    "lbl_sin".tr,
                    style: CustomTextStyles.titleSmallGray900_2,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionBlueGray100,
                  height: 6.v,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                    bottom: 9.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgAirplaneBlueGray30001,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 4.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlueGray1006x92,
                  height: 6.v,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 9.v,
                    bottom: 9.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_lhr".tr,
                    style: CustomTextStyles.titleSmallGray900_2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRefundDetail() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 23.h),
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Text(
              "msg_before_23_aug_2022".tr,
              style: CustomTextStyles.titleSmallGray900,
            ),
            SizedBox(height: 12.v),
            _buildLabel(
              passengerCounter: "lbl_1_passenger".tr,
              price: "lbl_500_00".tr,
            ),
            SizedBox(height: 17.v),
            Divider(),
            SizedBox(height: 17.v),
            Container(
              width: 241.h,
              margin: EdgeInsets.only(right: 54.h),
              child: Text(
                "msg_before_23_26_aug".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleSmallGray900.copyWith(
                  height: 1.70,
                ),
              ),
            ),
            SizedBox(height: 6.v),
            _buildLabel(
              passengerCounter: "lbl_1_passenger".tr,
              price: "lbl_550_00".tr,
            ),
            SizedBox(height: 17.v),
            Divider(),
            SizedBox(height: 19.v),
            Text(
              "msg_before_26_aug_2022".tr,
              style: CustomTextStyles.titleSmallGray900,
            ),
            SizedBox(height: 12.v),
            _buildLabel(
              passengerCounter: "lbl_1_passenger".tr,
              price: "lbl_644_00".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelect() {
    return SizedBox(
      height: 136.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 42.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_other_important".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    width: 301.h,
                    margin: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "msg_the_use_promo_code".tr,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge!.copyWith(
                        height: 1.70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 27.v,
                bottom: 40.v,
              ),
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              decoration: AppDecoration.outlineGrayF,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 17.v,
                      bottom: 5.v,
                    ),
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
                              imagePath:
                                  ImageConstant.imgArrowDownBlueGray30001,
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
                    margin: EdgeInsets.only(top: 12.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLabel({
    required String passengerCounter,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            passengerCounter,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        Text(
          price,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }
}
