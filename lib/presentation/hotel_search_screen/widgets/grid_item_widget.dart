import '../models/grid_item_model.dart';
import '../controller/hotel_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  GridItemWidget(
    this.gridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridItemModel gridItemModelObj;

  var controller = Get.find<HotelSearchController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Container(
          height: 88.v,
          width: 156.h,
          decoration: AppDecoration.gradientGrayToGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: gridItemModelObj.santorini!.value,
                  height: 88.v,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 31.v),
                  child: Obx(
                    () => Text(
                      gridItemModelObj.title!.value,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
