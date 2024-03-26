import '../models/list15_item_model.dart';
import '../controller/flight_payment_apply_promo_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List15ItemWidget extends StatelessWidget {
  List15ItemWidget(
    this.list15ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List15ItemModel list15ItemModelObj;

  var controller = Get.find<FlightPaymentApplyPromoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlinePrimary2.copyWith(
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
              top: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list15ItemModelObj.offer!.value,
                    style: CustomTextStyles.titleSmallGray900,
                  ),
                ),
                SizedBox(height: 9.v),
                Obx(
                  () => Text(
                    list15ItemModelObj.title!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Obx(
            () => CustomImageView(
              imagePath: list15ItemModelObj.flightDiscount!.value,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(
                top: 14.v,
                right: 4.h,
                bottom: 14.v,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
