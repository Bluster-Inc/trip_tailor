import '../models/category_item_model.dart';
import '../controller/home_vtwo_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget(
    this.categoryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoryItemModel categoryItemModelObj;

  var controller = Get.find<HomeVtwoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Obx(
              () => CustomIconButton(
                height: 56.adaptSize,
                width: 56.adaptSize,
                padding: EdgeInsets.all(16.h),
                decoration: IconButtonStyleHelper.fillLightBlueTL28,
                child: CustomImageView(
                  imagePath: categoryItemModelObj.close!.value,
                ),
              ),
            ),
            SizedBox(height: 15.v),
            Obx(
              () => Text(
                categoryItemModelObj.title!.value,
                style: CustomTextStyles.titleSmallGray900_2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
