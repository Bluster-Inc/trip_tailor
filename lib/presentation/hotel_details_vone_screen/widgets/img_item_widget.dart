import '../models/img_item_model.dart';
import '../controller/hotel_details_vone_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class ImgItemWidget extends StatelessWidget {
  ImgItemWidget(
    this.imgItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ImgItemModel imgItemModelObj;

  var controller = Get.find<HotelDetailsVoneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 330.v,
        width: double.maxFinite,
        decoration: AppDecoration.gradientGrayToGray,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImg330x375,
              height: 330.v,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 10.v,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 24.v),
            ),
          ],
        ),
      ),
    );
  }
}
