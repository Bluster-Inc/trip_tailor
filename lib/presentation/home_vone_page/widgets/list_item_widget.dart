import '../models/list_item_model.dart';
import '../controller/home_vone_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListItemModel listItemModelObj;

  var controller = Get.find<HomeVoneController>();

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
                  alignment: Alignment.center,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath: listItemModelObj.image!.value,
                        height: 150.v,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Container(
                          height: 150.v,
                          width: 240.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Obx(
                                () => CustomImageView(
                                  imagePath: listItemModelObj.image1!.value,
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
                                  padding: EdgeInsets.fromLTRB(
                                      16.h, 16.v, 16.h, 110.v),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      _buildOff(),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgFavoriteGray900,
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
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 13.v),
            Obx(
              () => Text(
                listItemModelObj.title!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 10.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMapPin,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      listItemModelObj.label!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_378".tr,
                        style: CustomTextStyles.titleMediumff111827_1,
                      ),
                      TextSpan(
                        text: "lbl_night".tr,
                        style: CustomTextStyles.labelLargeff6b7280,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStarGray600,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(
                    left: 134.h,
                    top: 2.v,
                    bottom: 5.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 2.v,
                  ),
                  child: Obx(
                    () => Text(
                      listItemModelObj.label1!.value,
                      style: theme.textTheme.titleSmall,
                    ),
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
  Widget _buildOff() {
    return CustomElevatedButton(
      height: 20.v,
      width: 54.h,
      text: "lbl_50_off".tr,
      margin: EdgeInsets.only(bottom: 4.v),
      buttonStyle: CustomButtonStyles.fillAmber,
      buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainerBold,
    );
  }
}
