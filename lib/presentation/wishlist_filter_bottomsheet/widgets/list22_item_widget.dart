import '../models/list22_item_model.dart';
import '../controller/wishlist_filter_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List22ItemWidget extends StatelessWidget {
  List22ItemWidget(
    this.list22ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List22ItemModel list22ItemModelObj;

  var controller = Get.find<WishlistFilterController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Obx(
            () => Text(
              list22ItemModelObj.duration!.value,
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
              imagePath: list22ItemModelObj.check!.value,
            ),
          ),
        ),
      ],
    );
  }
}
