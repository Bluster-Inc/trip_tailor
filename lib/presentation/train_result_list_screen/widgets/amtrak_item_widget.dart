import '../models/amtrak_item_model.dart';
import '../controller/train_result_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class AmtrakItemWidget extends StatelessWidget {
  AmtrakItemWidget(
    this.amtrakItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AmtrakItemModel amtrakItemModelObj;

  var controller = Get.find<TrainResultListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBluegray1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: amtrakItemModelObj.amtrak!.value,
                  height: 16.v,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 3.v,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 2.v,
                  bottom: 4.v,
                ),
                child: Obx(
                  () => Text(
                    amtrakItemModelObj.title!.value,
                    style: CustomTextStyles.labelLargeGray900_1,
                  ),
                ),
              ),
              Spacer(),
              Obx(
                () => Text(
                  amtrakItemModelObj.price!.value,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      amtrakItemModelObj.time!.value,
                      style: CustomTextStyles.titleSmallGray900_2,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    width: 76.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillGray10001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Obx(
                      () => Text(
                        amtrakItemModelObj.tags!.value,
                        style: CustomTextStyles.labelMediumPlusJakartaSans_1,
                      ),
                    ),
                  ),
                ],
              ),
              Obx(
                () => CustomImageView(
                  imagePath: amtrakItemModelObj.amtrak1!.value,
                  height: 6.v,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 18.v,
                    bottom: 22.v,
                  ),
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: amtrakItemModelObj.amtrak2!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 9.v,
                    bottom: 13.v,
                  ),
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: amtrakItemModelObj.amtrak3!.value,
                  height: 6.v,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 18.v,
                    bottom: 22.v,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Obx(
                        () => Text(
                          amtrakItemModelObj.time1!.value,
                          style: CustomTextStyles.titleSmallGray900_2,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      width: 67.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillGray10001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Obx(
                        () => Text(
                          amtrakItemModelObj.tags1!.value,
                          style: CustomTextStyles.labelMediumPlusJakartaSans_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 34.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  amtrakItemModelObj.distance!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Obx(
                () => Text(
                  amtrakItemModelObj.title1!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
