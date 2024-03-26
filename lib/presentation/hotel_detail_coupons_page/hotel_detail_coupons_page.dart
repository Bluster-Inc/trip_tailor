import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'widgets/holiday001_item_widget.dart';
import 'models/holiday001_item_model.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_detail_coupons_controller.dart';
import 'models/hotel_detail_coupons_model.dart';

class HotelDetailCouponsPage extends StatelessWidget {
  HotelDetailCouponsPage({Key? key})
      : super(
          key: key,
        );

  HotelDetailCouponsController controller =
      Get.put(HotelDetailCouponsController(HotelDetailCouponsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "msg_enter_coupon_code".tr,
                      hintStyle: theme.textTheme.bodyLarge!,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 18.v,
                      ),
                      borderDecoration: SearchViewStyleHelper.outlineBlueGray,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildHOLIDAY001(),
                  SizedBox(height: 25.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "lbl_can_t_be_used".tr,
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  _buildCoupon(),
                  SizedBox(height: 16.v),
                  _buildSelectARoom1(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHOLIDAY001() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: controller
              .hotelDetailCouponsModelObj.value.holiday001ItemList.value.length,
          itemBuilder: (context, index) {
            Holiday001ItemModel model = controller.hotelDetailCouponsModelObj
                .value.holiday001ItemList.value[index];
            return Holiday001ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHOLIDAY2() {
    return CustomElevatedButton(
      height: 20.v,
      width: 73.h,
      text: "lbl_holiday001".tr,
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: CustomTextStyles.labelMediumRedA100,
      alignment: Alignment.bottomLeft,
    );
  }

  /// Section Widget
  Widget _buildCoupon() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.redA100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 100.v,
        width: 327.h,
        decoration: AppDecoration.fillRedA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Opacity(
              opacity: 0.1,
              child: CustomImageView(
                imagePath: ImageConstant.imgEllipse10295x121,
                height: 95.v,
                alignment: Alignment.centerRight,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorOnprimarycontainer,
              height: 7.v,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 4.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorOnprimarycontainer,
              height: 5.v,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 134.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorOnprimarycontainer1x4,
              height: 1.v,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 152.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorOnprimarycontainer1x1,
              height: 1.adaptSize,
              width: 1.adaptSize,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 138.h,
                top: 2.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector58x220,
              height: 58.v,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector58x220,
              height: 40.v,
              alignment: Alignment.bottomLeft,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgUnsplashTxgtjrzc4w,
              height: 100.v,
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 3.v,
                  right: 175.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorOnprimarycontainer1x1,
                      height: 1.adaptSize,
                      width: 1.adaptSize,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 1.h),
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorOnprimarycontainer1x4,
                      height: 1.v,
                      margin: EdgeInsets.only(left: 4.h),
                    ),
                    SizedBox(height: 2.v),
                    SizedBox(
                      height: 79.v,
                      width: 145.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgVectorOnprimarycontainer1x1,
                            height: 1.adaptSize,
                            width: 1.adaptSize,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 1.h),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 79.v,
                              width: 145.h,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 30.v,
                                      width: 23.h,
                                      margin: EdgeInsets.only(top: 17.v),
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Opacity(
                                            opacity: 0.1,
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroupOnprimarycontainer,
                                              height: 7.v,
                                              alignment: Alignment.topCenter,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              width: 12.h,
                                              margin:
                                                  EdgeInsets.only(right: 2.h),
                                              child: Text(
                                                "lbl_up_to".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .labelMediumOnPrimaryContainer,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 16.v,
                                      width: 84.h,
                                      margin: EdgeInsets.only(left: 9.h),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Opacity(
                                            opacity: 0.1,
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroupOnprimarycontainer,
                                              height: 7.v,
                                              alignment: Alignment.topRight,
                                              margin:
                                                  EdgeInsets.only(right: 20.h),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              "msg_holiday_to_japan".tr,
                                              style: CustomTextStyles
                                                  .labelMediumOnPrimaryContainerBold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: SizedBox(
                                      height: 58.v,
                                      width: 136.h,
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Opacity(
                                            opacity: 0.1,
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroupOnprimarycontainer,
                                              height: 7.v,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                left: 46.h,
                                                top: 2.v,
                                              ),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.1,
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroupOnprimarycontainer,
                                              height: 7.v,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                right: 4.h,
                                                bottom: 20.v,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 8.h),
                                              child: Text(
                                                "lbl_t_c_apply".tr,
                                                style: CustomTextStyles
                                                    .labelSmallOnPrimaryContainer,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              "lbl_500_00".tr,
                                              style:
                                                  theme.textTheme.headlineLarge,
                                            ),
                                          ),
                                          _buildHOLIDAY2(),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.1,
                                    child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgGroupOnprimarycontainer,
                                      height: 7.v,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 12.v,
                                        right: 23.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectARoom() {
    return CustomElevatedButton(
      width: 159.h,
      text: "lbl_select_a_room".tr,
      margin: EdgeInsets.only(top: 12.v),
    );
  }

  /// Section Widget
  Widget _buildSelectARoom1() {
    return SizedBox(
      height: 100.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: theme.colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Container(
                height: 100.v,
                width: 327.h,
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroupLightBlueA20025x76,
                        height: 25.v,
                        alignment: Alignment.topRight,
                      ),
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 10.v,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 32.v,
                          right: 74.h,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 7.v,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 11.v,
                          right: 99.h,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroupLightBlueA200,
                        height: 7.v,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 4.v),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 7.v,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 7.h,
                          top: 26.v,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 7.v,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 57.h,
                          top: 9.v,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 7.v,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 62.h,
                          top: 32.v,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 7.v,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 106.h,
                          top: 21.v,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroupLightBlueA2005x23,
                        height: 5.v,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 134.h),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 7.v,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 125.h,
                          bottom: 33.v,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector58x220,
                      height: 58.v,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                        height: 40.v,
                        width: 220.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector58x220,
                              height: 40.v,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 76.h,
                                  bottom: 13.v,
                                ),
                                child: Text(
                                  "lbl_t_c_apply".tr,
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImg100x130,
                      height: 100.v,
                      alignment: Alignment.centerRight,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 13.v,
                        ),
                        child: Text(
                          "msg_hotel_discount_coupon".tr,
                          style: CustomTextStyles.labelMediumCyanA100,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 12.h,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          top: 32.v,
                        ),
                        child: Text(
                          "lbl_up_to".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelMediumCyan100,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 32.h),
                        child: Text(
                          "lbl_50_off2".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 16.h,
                          right: 238.h,
                          bottom: 12.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillAmber.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            Text(
                              "lbl_holiday001".tr,
                              style: CustomTextStyles
                                  .labelMediumOnPrimaryContainerBold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 29.v,
                bottom: 3.v,
              ),
              decoration: AppDecoration.outlineGrayF,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 17.v,
                      bottom: 6.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_120".tr,
                                style: CustomTextStyles.titleLargeff111827,
                              ),
                              TextSpan(
                                text: "lbl_night".tr,
                                style: CustomTextStyles.titleSmallff111827,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "msg_include_taxes_and".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  _buildSelectARoom(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
