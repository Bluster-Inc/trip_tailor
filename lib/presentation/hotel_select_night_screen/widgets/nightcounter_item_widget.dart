import '../models/nightcounter_item_model.dart';
import '../controller/hotel_select_night_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class NightcounterItemWidget extends StatelessWidget {
  NightcounterItemWidget(
    this.nightcounterItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NightcounterItemModel nightcounterItemModelObj;

  var controller = Get.find<HotelSelectNightController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.outlineGray2001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              nightcounterItemModelObj.nightCounter!.value,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          SizedBox(height: 6.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Obx(
                  () => Text(
                    nightcounterItemModelObj.title!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 8.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => Text(
                    nightcounterItemModelObj.title1!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
