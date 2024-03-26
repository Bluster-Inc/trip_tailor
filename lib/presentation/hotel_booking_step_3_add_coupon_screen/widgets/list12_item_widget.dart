import '../models/list12_item_model.dart';
import '../controller/hotel_booking_step_3_add_coupon_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List12ItemWidget extends StatelessWidget {
  List12ItemWidget(
    this.list12ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List12ItemModel list12ItemModelObj;

  var controller = Get.find<HotelBookingStep3AddCouponController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillGrayTL12,
            child: CustomImageView(
              imagePath: ImageConstant.imgTelevisionGray900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list12ItemModelObj.offer!.value,
                    style: CustomTextStyles.titleSmallGray900,
                  ),
                ),
                SizedBox(height: 11.v),
                Obx(
                  () => Text(
                    list12ItemModelObj.title!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              right: 4.h,
              bottom: 15.v,
            ),
            child: Obx(
              () => Text(
                list12ItemModelObj.title1!.value,
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
