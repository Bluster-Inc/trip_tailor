import '../models/category1_item_model.dart';
import '../controller/hotel_select_room_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Category1ItemWidget extends StatelessWidget {
  Category1ItemWidget(
    this.category1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Category1ItemModel category1ItemModelObj;

  var controller = Get.find<HotelSelectRoomDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 101.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: category1ItemModelObj.bedroom!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              category1ItemModelObj.title!.value,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              category1ItemModelObj.title1!.value,
              style: CustomTextStyles.labelLargeGray900,
            ),
          ),
        ],
      ),
    );
  }
}
