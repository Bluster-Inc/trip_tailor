import '../models/krishnabarbe_item_model.dart';
import '../controller/hotel_detail_review_view_all_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class KrishnabarbeItemWidget extends StatelessWidget {
  KrishnabarbeItemWidget(
    this.krishnabarbeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KrishnabarbeItemModel krishnabarbeItemModelObj;

  var controller = Get.find<HotelDetailReviewViewAllController>();

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
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: krishnabarbeItemModelObj.krishnaBarbe!.value,
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
                        krishnabarbeItemModelObj.title!.value,
                        style: CustomTextStyles.titleSmallGray900,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Obx(
                      () => Text(
                        krishnabarbeItemModelObj.duration!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: 91.h,
                margin: EdgeInsets.only(bottom: 21.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStarPrimary,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
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
              ),
            ],
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: 295.h,
            child: Obx(
              () => Text(
                krishnabarbeItemModelObj.description!.value,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall!.copyWith(
                  height: 1.70,
                ),
              ),
            ),
          ),
          SizedBox(height: 7.v),
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
                    krishnabarbeItemModelObj.subtitle!.value,
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
