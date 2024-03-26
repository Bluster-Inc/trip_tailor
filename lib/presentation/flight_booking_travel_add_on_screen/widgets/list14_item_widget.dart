import '../models/list14_item_model.dart';
import '../controller/flight_booking_travel_add_on_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List14ItemWidget extends StatelessWidget {
  List14ItemWidget(
    this.list14ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List14ItemModel list14ItemModelObj;

  var controller = Get.find<FlightBookingTravelAddOnController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: list14ItemModelObj.bag!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list14ItemModelObj.weight!.value,
                    style: CustomTextStyles.titleSmallGray900,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    list14ItemModelObj.title!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 11.v),
            child: Obx(
              () => Text(
                list14ItemModelObj.price!.value,
                style: CustomTextStyles.titleSmallGray900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
