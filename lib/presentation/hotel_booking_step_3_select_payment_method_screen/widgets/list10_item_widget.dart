import '../models/list10_item_model.dart';
import '../controller/hotel_booking_step_3_select_payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List10ItemWidget extends StatelessWidget {
  List10ItemWidget(
    this.list10ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List10ItemModel list10ItemModelObj;

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
              horizontal: 13.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: list10ItemModelObj.visaxxxx!.value,
                height: 12.v,
                alignment: Alignment.center,
              ),
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
                    list10ItemModelObj.title!.value,
                    style: CustomTextStyles.titleSmallGray900,
                  ),
                ),
                SizedBox(height: 11.v),
                Obx(
                  () => Text(
                    list10ItemModelObj.title1!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              top: 14.v,
              right: 4.h,
              bottom: 14.v,
            ),
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Container(
              height: 13.adaptSize,
              width: 13.adaptSize,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
