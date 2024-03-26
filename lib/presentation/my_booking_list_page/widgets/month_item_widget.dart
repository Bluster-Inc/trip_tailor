import '../models/month_item_model.dart';
import '../controller/my_booking_list_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class MonthItemWidget extends StatelessWidget {
  MonthItemWidget(
    this.monthItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MonthItemModel monthItemModelObj;

  var controller = Get.find<MyBookingListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBluegray1005.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 39.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillAmberTL12,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAirplaneOnprimarycontainer,
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
                      Text(
                        "msg_singapore_to_london".tr,
                        style: CustomTextStyles.titleSmallGray900,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "msg_departs_on_fri".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckBlueGray80001,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "msg_purchase_successfull".tr,
                  style: CustomTextStyles.labelLargeBluegray80001,
                ),
              ),
              Spacer(),
              Text(
                "lbl_744_00".tr,
                style: CustomTextStyles.labelLargeGray900,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
