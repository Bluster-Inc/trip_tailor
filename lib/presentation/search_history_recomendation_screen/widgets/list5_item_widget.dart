import '../models/list5_item_model.dart';
import '../controller/search_history_recomendation_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List5ItemWidget extends StatelessWidget {
  List5ItemWidget(
    this.list5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List5ItemModel list5ItemModelObj;

  var controller = Get.find<SearchHistoryRecomendationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: list5ItemModelObj.image!.value,
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
                  list5ItemModelObj.title!.value,
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
                        list5ItemModelObj.label!.value,
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
    );
  }
}
