import '../models/category2_item_model.dart';
import '../controller/faq_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Category2ItemWidget extends StatelessWidget {
  Category2ItemWidget(
    this.category2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Category2ItemModel category2ItemModelObj;

  var controller = Get.find<FaqController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Obx(
              () => CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(11.h),
                decoration: IconButtonStyleHelper.fillGray,
                child: CustomImageView(
                  imagePath: category2ItemModelObj.globe!.value,
                ),
              ),
            ),
            SizedBox(height: 14.v),
            Obx(
              () => Text(
                category2ItemModelObj.title!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
