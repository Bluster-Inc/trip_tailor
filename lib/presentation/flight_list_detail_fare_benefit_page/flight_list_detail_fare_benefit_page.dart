import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/flight_list_detail_fare_benefit_controller.dart';
import 'models/flight_list_detail_fare_benefit_model.dart';

class FlightListDetailFareBenefitPage extends StatelessWidget {
  FlightListDetailFareBenefitPage({Key? key})
      : super(
          key: key,
        );

  FlightListDetailFareBenefitController controller = Get.put(
      FlightListDetailFareBenefitController(
          FlightListDetailFareBenefitModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 27.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "lbl_price_details".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    _buildContent(),
                    SizedBox(height: 27.v),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "msg_included_benefits".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    _buildCoupon(),
                    SizedBox(height: 29.v),
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
  Widget _buildContent() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 23.h),
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.outlineBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildAmount(
              title: "msg_adult_basic_fare".tr,
              title1: "lbl_744_00".tr,
            ),
            SizedBox(height: 15.v),
            _buildAmount(
              title: "lbl_tax_and_fees".tr,
              title1: "lbl_included".tr,
            ),
            SizedBox(height: 15.v),
            _buildAmount(
              title: "lbl_protection".tr,
              title1: "lbl_free".tr,
            ),
            SizedBox(height: 19.v),
            Divider(),
            SizedBox(height: 18.v),
            _buildAmount(
              title: "lbl_total_payment".tr,
              title1: "lbl_744_00".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCoupon() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 23.h),
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(14.h),
                decoration: IconButtonStyleHelper.fillGrayTL12,
                child: CustomImageView(
                  imagePath: ImageConstant.imgTrophy,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_free_protection".tr,
                    style: CustomTextStyles.titleSmallGray900,
                  ),
                  SizedBox(height: 7.v),
                  SizedBox(
                    width: 179.h,
                    child: Text(
                      "msg_this_free_insurace".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelMedium!.copyWith(
                        height: 1.60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowDownBlueGray30001,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 21.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelect() {
    return SizedBox(
      height: 262.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_baggage_price".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 16.v),
                  Container(
                    width: 327.h,
                    decoration: AppDecoration.outlineBluegray1003,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.v),
                              child: Text(
                                "lbl_qatar_airways".tr,
                                style: CustomTextStyles.titleSmallGray900,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgQatarAirwaysSvg,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.only(
                                left: 8.h,
                                bottom: 4.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.v),
                        Row(
                          children: [
                            Text(
                              "msg_singapore_london".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                            Container(
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 4.v,
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
                              child: Text(
                                "lbl_economy".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 17.v),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildAmount1(
                    weight: "msg_cabin_baggage_7kg".tr,
                    title: "lbl_free".tr,
                  ),
                  SizedBox(height: 16.v),
                  _buildAmount1(
                    weight: "lbl_baggage_20kg".tr,
                    title: "lbl_free".tr,
                  ),
                  SizedBox(height: 15.v),
                  _buildAmount1(
                    weight: "lbl_5kg_baggage".tr,
                    title: "lbl_402".tr,
                  ),
                  SizedBox(height: 16.v),
                  _buildAmount1(
                    weight: "lbl_10kg_baggage".tr,
                    title: "lbl_80".tr,
                  ),
                  SizedBox(height: 13.v),
                  _buildAmount1(
                    weight: "lbl_15kg_baggage".tr,
                    title: "lbl_120".tr,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 130.v,
                bottom: 63.v,
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
  Widget _buildAmount({
    required String title,
    required String title1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Text(
          title1,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildAmount1({
    required String weight,
    required String title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            weight,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        Text(
          title,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }
}
