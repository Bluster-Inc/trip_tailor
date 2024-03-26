import '../models/title_item_model.dart';
import '../controller/train_select_seat_wagon_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class TitleItemWidget extends StatelessWidget {
  TitleItemWidget(
    this.titleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TitleItemModel titleItemModelObj;

  var controller = Get.find<TrainSelectSeatWagonController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBluegray1005.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  titleItemModelObj.title!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 8.v),
              Obx(
                () => Text(
                  titleItemModelObj.title1!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          Obx(
            () => CustomImageView(
              imagePath: titleItemModelObj.firstclass!.value,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 12.v),
            ),
          ),
        ],
      ),
    );
  }
}
