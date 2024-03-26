import '../models/hiltoncatedral_item_model.dart';
import '../controller/search_history_recomendation_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class HiltoncatedralItemWidget extends StatelessWidget {
  HiltoncatedralItemWidget(
    this.hiltoncatedralItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HiltoncatedralItemModel hiltoncatedralItemModelObj;

  var controller = Get.find<SearchHistoryRecomendationController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: appTheme.gray10001,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Container(
            height: 180.v,
            width: 154.h,
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: hiltoncatedralItemModelObj.hiltonCatedral!.value,
                    width: 154.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 16.v,
                    right: 14.h,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 11.v),
        Obx(
          () => Text(
            hiltoncatedralItemModelObj.title!.value,
            style: CustomTextStyles.titleSmallGray900,
          ),
        ),
        SizedBox(height: 10.v),
        Row(
          children: [
            Obx(
              () => Text(
                hiltoncatedralItemModelObj.label!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_678".tr,
                      style: CustomTextStyles.labelLargee816d4e9,
                    ),
                    TextSpan(
                      text: "lbl_day".tr,
                      style: CustomTextStyles.labelLargeff6b7280,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
