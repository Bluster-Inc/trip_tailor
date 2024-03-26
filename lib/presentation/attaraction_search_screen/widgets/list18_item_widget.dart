import '../models/list18_item_model.dart';
import '../controller/attaraction_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List18ItemWidget extends StatelessWidget {
  List18ItemWidget(
    this.list18ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List18ItemModel list18ItemModelObj;

  var controller = Get.find<AttaractionSearchController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: list18ItemModelObj.image!.value,
              height: 72.adaptSize,
              width: 72.adaptSize,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 11.v,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list18ItemModelObj.title!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 12.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMapPin,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Obx(
                        () => Text(
                          list18ItemModelObj.label!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
