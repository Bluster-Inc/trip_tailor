import '../models/holiday001_item_model.dart';
import '../controller/hotel_detail_coupons_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Holiday001ItemWidget extends StatelessWidget {
  Holiday001ItemWidget(
    this.holiday001ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Holiday001ItemModel holiday001ItemModelObj;

  var controller = Get.find<HotelDetailCouponsController>();

  @override
  Widget build(BuildContext context) {
    return Card(
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
              child: Obx(
                () => CustomImageView(
                  imagePath: holiday001ItemModelObj.upto!.value,
                  height: 25.v,
                  alignment: Alignment.topRight,
                ),
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
            CustomImageView(
              imagePath: ImageConstant.imgVectorLightBlueA200,
              height: 7.v,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 4.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorLightBlueA200,
              height: 5.v,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 134.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorLightBlueA2001x4,
              height: 1.v,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 152.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorLightBlueA2001x1,
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
            Obx(
              () => CustomImageView(
                imagePath: holiday001ItemModelObj.upto1!.value,
                height: 100.v,
                alignment: Alignment.centerRight,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 3.v,
                  right: 171.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorLightBlueA2001x1,
                      height: 1.adaptSize,
                      width: 1.adaptSize,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 5.h),
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorLightBlueA2001x4,
                      height: 1.v,
                      margin: EdgeInsets.only(left: 4.h),
                    ),
                    SizedBox(height: 2.v),
                    SizedBox(
                      height: 79.v,
                      width: 149.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorLightBlueA2001x1,
                            height: 1.adaptSize,
                            width: 1.adaptSize,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 1.h),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 79.v,
                              width: 149.h,
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
                                            opacity: 0.5,
                                            child: CustomImageView(
                                              imagePath: ImageConstant.imgGroup,
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
                                              child: Obx(
                                                () => Text(
                                                  holiday001ItemModelObj
                                                      .title!.value,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .labelMediumCyan100,
                                                ),
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
                                      height: 19.v,
                                      width: 113.h,
                                      margin: EdgeInsets.only(left: 9.h),
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Opacity(
                                            opacity: 0.5,
                                            child: CustomImageView(
                                              imagePath: ImageConstant.imgGroup,
                                              height: 7.v,
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  EdgeInsets.only(left: 41.h),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.5,
                                            child: CustomImageView(
                                              imagePath: ImageConstant.imgGroup,
                                              height: 7.v,
                                              alignment: Alignment.bottomRight,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.v),
                                              child: Obx(
                                                () => Text(
                                                  holiday001ItemModelObj
                                                      .title1!.value,
                                                  style: CustomTextStyles
                                                      .labelMediumCyanA100,
                                                ),
                                              ),
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
                                      width: 140.h,
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Opacity(
                                            opacity: 0.5,
                                            child: CustomImageView(
                                              imagePath: ImageConstant.imgGroup,
                                              height: 7.v,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                left: 46.h,
                                                top: 2.v,
                                              ),
                                            ),
                                          ),
                                          Opacity(
                                            opacity: 0.5,
                                            child: CustomImageView(
                                              imagePath: ImageConstant.imgGroup,
                                              height: 7.v,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                right: 8.h,
                                                bottom: 20.v,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 12.h),
                                              child: Obx(
                                                () => Text(
                                                  holiday001ItemModelObj
                                                      .title2!.value,
                                                  style: theme
                                                      .textTheme.labelSmall,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Obx(
                                              () => Text(
                                                holiday001ItemModelObj
                                                    .offer!.value,
                                                style: theme
                                                    .textTheme.headlineLarge,
                                              ),
                                            ),
                                          ),
                                          _buildHOLIDAY001(),
                                        ],
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
  Widget _buildHOLIDAY001() {
    return CustomElevatedButton(
      height: 20.v,
      width: 73.h,
      text: "lbl_holiday001".tr,
      buttonStyle: CustomButtonStyles.fillAmber,
      buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainerBold,
      alignment: Alignment.bottomLeft,
    );
  }
}
