import '../models/list8_item_model.dart';
import '../controller/hotel_special_deals_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List8ItemWidget extends StatelessWidget {
  List8ItemWidget(
    this.list8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List8ItemModel list8ItemModelObj;

  var controller = Get.find<HotelSpecialDealsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Container(
                height: 150.v,
                width: 240.h,
                decoration: AppDecoration.gradientGrayToGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath: list8ItemModelObj.image!.value,
                        height: 150.v,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 110.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomElevatedButton(
                              height: 20.v,
                              width: 54.h,
                              text: "lbl_50_off".tr,
                              margin: EdgeInsets.only(bottom: 4.v),
                              buttonStyle: CustomButtonStyles.fillAmber,
                              buttonTextStyle: CustomTextStyles
                                  .labelMediumOnPrimaryContainerBold,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgFavoriteGray900,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 13.v),
            Obx(
              () => Text(
                list8ItemModelObj.title!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 7.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMapPin,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 1.v,
                  ),
                  child: Obx(
                    () => Text(
                      list8ItemModelObj.label!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStarGray600,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 1.v,
                  ),
                  child: Obx(
                    () => Text(
                      list8ItemModelObj.label1!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 7.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Obx(
                () => Text(
                  list8ItemModelObj.price!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
            SizedBox(height: 2.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_240".tr,
                    style: CustomTextStyles.titleMediumff111827_1,
                  ),
                  TextSpan(
                    text: "lbl_night".tr,
                    style: CustomTextStyles.bodySmallff6b7280,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
