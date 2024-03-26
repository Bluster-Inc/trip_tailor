import '../models/businessclass_item_model.dart';
import '../controller/train_select_seat_number_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class BusinessclassItemWidget extends StatelessWidget {
  BusinessclassItemWidget(
    this.businessclassItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BusinessclassItemModel businessclassItemModelObj;

  var controller = Get.find<TrainSelectSeatNumberController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(left: 56.h),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 24.v,
        ),
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDownBlueGray30001,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                ),
                _buildBusinessClass(),
                CustomImageView(
                  imagePath: ImageConstant.imgCheckPrimary,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                ),
              ],
            ),
            SizedBox(height: 24.v),
            Divider(
              color: appTheme.blueGray100,
              indent: 4.h,
              endIndent: 4.h,
            ),
            SizedBox(height: 23.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillGrayTL8,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlueGray30001,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 21.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_1".tr,
                      style: CustomTextStyles.titleSmallGray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillAmber,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillAmber,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_2".tr,
                      style: CustomTextStyles.titleSmallGray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillGrayTL8,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlueGray30001,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_3".tr,
                      style: CustomTextStyles.titleSmallGray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillAmber,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillAmber,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillAmber,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_4".tr,
                      style: CustomTextStyles.titleSmallGray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillAmber,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillAmber,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.outlineAmber,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgThumbsUpAmber200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_5".tr,
                      style: CustomTextStyles.titleSmallGray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillGrayTL8,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlueGray30001,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillAmber,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_6".tr,
                      style: CustomTextStyles.titleSmallGray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillGrayTL8,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlueGray30001,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillGrayTL8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserBlueGray30001,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_7".tr,
                      style: CustomTextStyles.titleSmallGray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillAmber,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillAmber,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            SizedBox(
              height: 6.v,
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: 6,
                  activeDotColor: appTheme.gray900,
                  dotColor: appTheme.gray200,
                  dotHeight: 6.v,
                  dotWidth: 6.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBusinessClass() {
    return CustomElevatedButton(
      height: 24.v,
      width: 95.h,
      text: "lbl_business_class".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL4,
      buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainerBold,
    );
  }
}
