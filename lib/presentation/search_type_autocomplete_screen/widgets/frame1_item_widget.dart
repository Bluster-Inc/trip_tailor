import '../models/frame1_item_model.dart';
import '../controller/search_type_autocomplete_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  Frame1ItemWidget(
    this.frame1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame1ItemModel frame1ItemModelObj;

  var controller = Get.find<SearchTypeAutocompleteController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: frame1ItemModelObj.luxuryApartment!.value,
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
                  frame1ItemModelObj.title!.value,
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
                        frame1ItemModelObj.label!.value,
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
