import '../models/freeprotections_item_model.dart';
import '../controller/flight_booking_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class FreeprotectionsItemWidget extends StatelessWidget {
  FreeprotectionsItemWidget(
    this.freeprotectionsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FreeprotectionsItemModel freeprotectionsItemModelObj;

  var controller = Get.find<FlightBookingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlinePrimary3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: freeprotectionsItemModelObj.freeprotections!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Obx(
                  () => Text(
                    freeprotectionsItemModelObj.label!.value,
                    style: CustomTextStyles.titleSmallGray900,
                  ),
                ),
              ),
              Spacer(),
              Obx(
                () => CustomIconButton(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  padding: EdgeInsets.all(3.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  child: CustomImageView(
                    imagePath: freeprotectionsItemModelObj.check!.value,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 259.h,
              margin: EdgeInsets.only(left: 36.h),
              child: Obx(
                () => Text(
                  freeprotectionsItemModelObj.description!.value,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge!.copyWith(
                    height: 1.70,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 36.h),
            child: Obx(
              () => Text(
                freeprotectionsItemModelObj.label1!.value,
                style: CustomTextStyles.labelLargePrimaryBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
