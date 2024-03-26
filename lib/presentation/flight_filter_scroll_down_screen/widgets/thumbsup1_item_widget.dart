import '../models/thumbsup1_item_model.dart';
import '../controller/flight_filter_scroll_down_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Thumbsup1ItemWidget extends StatelessWidget {
  Thumbsup1ItemWidget(
    this.thumbsup1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Thumbsup1ItemModel thumbsup1ItemModelObj;

  var controller = Get.find<FlightFilterScrollDownController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(9.h),
              child: CustomImageView(
                imagePath: thumbsup1ItemModelObj.thumbsUp!.value,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Obx(
            () => Text(
              thumbsup1ItemModelObj.title!.value,
              style: CustomTextStyles.labelLargeGray900,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              thumbsup1ItemModelObj.title1!.value,
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
