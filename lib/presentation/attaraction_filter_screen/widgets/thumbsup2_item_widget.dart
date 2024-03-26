import '../models/thumbsup2_item_model.dart';
import '../controller/attaraction_filter_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Thumbsup2ItemWidget extends StatelessWidget {
  Thumbsup2ItemWidget(
    this.thumbsup2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Thumbsup2ItemModel thumbsup2ItemModelObj;

  var controller = Get.find<AttaractionFilterController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(9.h),
              child: CustomImageView(
                imagePath: thumbsup2ItemModelObj.thumbsUp!.value,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Obx(
            () => Text(
              thumbsup2ItemModelObj.title!.value,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeGray900,
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              thumbsup2ItemModelObj.title1!.value,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
