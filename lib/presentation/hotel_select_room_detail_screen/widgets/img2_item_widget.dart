import '../models/img2_item_model.dart';
import '../controller/hotel_select_room_detail_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Img2ItemWidget extends StatelessWidget {
  Img2ItemWidget(
    this.img2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Img2ItemModel img2ItemModelObj;

  var controller = Get.find<HotelSelectRoomDetailController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 330.v,
        width: double.maxFinite,
        decoration: AppDecoration.gradientGrayToGray,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImg21,
              height: 330.v,
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 56.v,
              ),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.outlineOnPrimaryContainerTL20,
                alignment: Alignment.topLeft,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
