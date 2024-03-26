import '../models/list9_item_model.dart';
import '../controller/hotel_detail_review_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List9ItemWidget extends StatelessWidget {
  List9ItemWidget(
    this.list9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List9ItemModel list9ItemModelObj;

  var controller = Get.find<HotelDetailReviewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: list9ItemModelObj.good!.value,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        list9ItemModelObj.title!.value,
                        style: CustomTextStyles.titleSmallGray900,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Obx(
                      () => Text(
                        list9ItemModelObj.duration!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgStarPrimary,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(bottom: 22.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  bottom: 21.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_4_52".tr,
                        style: CustomTextStyles.titleSmalle816d4e9,
                      ),
                      TextSpan(
                        text: "lbl_good".tr,
                        style: CustomTextStyles.titleSmallff6b7280,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: 295.h,
            child: Obx(
              () => Text(
                list9ItemModelObj.description!.value,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall!.copyWith(
                  height: 1.70,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIkeOutlined,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 3.v,
                ),
                child: Obx(
                  () => Text(
                    list9ItemModelObj.subtitle!.value,
                    style: CustomTextStyles.labelLargeBluegray30001_1,
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgDotsVertical,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
