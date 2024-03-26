import '../models/list1_item_model.dart';
import '../controller/home_scroll_down_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  List1ItemWidget(
    this.list1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List1ItemModel list1ItemModelObj;

  var controller = Get.find<HomeScrollDownOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
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
                      imagePath: list1ItemModelObj.quennAnneBeach!.value,
                      width: 88.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: list1ItemModelObj.quennAnneBeach1!.value,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 10.v,
                        right: 10.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list1ItemModelObj.title!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 14.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMapPin,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          list1ItemModelObj.label!.value,
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
                        bottom: 2.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          list1ItemModelObj.label1!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_78".tr,
                        style: CustomTextStyles.titleMediumff111827_1,
                      ),
                      TextSpan(
                        text: "lbl_day".tr,
                        style: CustomTextStyles.titleSmallff6b7280,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
