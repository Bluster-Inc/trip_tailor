import '../models/list21_item_model.dart';
import '../controller/my_booking_sort_filter_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List21ItemWidget extends StatelessWidget {
  List21ItemWidget(
    this.list21ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List21ItemModel list21ItemModelObj;

  var controller = Get.find<MyBookingSortFilterController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Obx(
            () => Text(
              list21ItemModelObj.title!.value,
              style: CustomTextStyles.titleSmallGray900,
            ),
          ),
        ),
        Obx(
          () => CustomIconButton(
            height: 20.adaptSize,
            width: 20.adaptSize,
            padding: EdgeInsets.all(3.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: list21ItemModelObj.check!.value,
            ),
          ),
        ),
      ],
    );
  }
}
