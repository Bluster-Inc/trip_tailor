import '../models/off_item_model.dart';
import '../controller/hotel_special_deals_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class OffItemWidget extends StatelessWidget {
  OffItemWidget(
    this.offItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OffItemModel offItemModelObj;

  var controller = Get.find<HotelSpecialDealsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Container(
            height: 100.v,
            width: 88.h,
            decoration: AppDecoration.gradientGrayToGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: offItemModelObj.image!.value,
                    width: 88.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteGray900,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 10.v,
                    right: 10.h,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 9.v,
            bottom: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  offItemModelObj.title!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 12.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMapPin,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 1.v,
                    ),
                    child: Obx(
                      () => Text(
                        offItemModelObj.label!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStarGray600,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 1.v,
                    ),
                    child: Obx(
                      () => Text(
                        offItemModelObj.label1!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13.v),
              SizedBox(
                width: 223.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_125".tr,
                              style: CustomTextStyles.titleMediumff111827_1,
                            ),
                            TextSpan(
                              text: "lbl_night".tr,
                              style: CustomTextStyles.titleSmallff6b7280,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CustomElevatedButton(
                      height: 20.v,
                      width: 52.h,
                      text: "lbl_10_off".tr,
                      buttonStyle: CustomButtonStyles.fillAmber,
                      buttonTextStyle:
                          CustomTextStyles.labelMediumOnPrimaryContainerBold,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
