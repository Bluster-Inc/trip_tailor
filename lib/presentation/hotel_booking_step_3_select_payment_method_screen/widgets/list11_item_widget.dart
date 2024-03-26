import '../models/list11_item_model.dart';
import '../controller/hotel_booking_step_3_select_payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List11ItemWidget extends StatelessWidget {
  List11ItemWidget(
    this.list11ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List11ItemModel list11ItemModelObj;

  var controller = Get.find<HotelBookingStep3SelectPaymentMethodController>();

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
          Container(
            height: 48.v,
            width: 64.h,
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: list11ItemModelObj.paypal!.value,
                width: 17.h,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list11ItemModelObj.title!.value,
                    style: CustomTextStyles.titleSmallGray900,
                  ),
                ),
                SizedBox(height: 8.v),
                Obx(
                  () => Text(
                    list11ItemModelObj.title1!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgContrastOnprimarycontainer,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 14.v,
              right: 4.h,
              bottom: 14.v,
            ),
          ),
        ],
      ),
    );
  }
}
