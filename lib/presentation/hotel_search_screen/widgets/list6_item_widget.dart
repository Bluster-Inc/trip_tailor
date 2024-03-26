import '../models/list6_item_model.dart';
import '../controller/hotel_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List6ItemWidget extends StatelessWidget {
  List6ItemWidget(
    this.list6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List6ItemModel list6ItemModelObj;

  var controller = Get.find<HotelSearchController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: list6ItemModelObj.image!.value,
            height: 72.adaptSize,
            width: 72.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list6ItemModelObj.title!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 14.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMapPin,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          list6ItemModelObj.label!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
