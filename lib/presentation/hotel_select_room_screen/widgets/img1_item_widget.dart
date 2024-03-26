import '../models/img1_item_model.dart';
import '../controller/hotel_select_room_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Img1ItemWidget extends StatelessWidget {
  Img1ItemWidget(
    this.img1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Img1ItemModel img1ItemModelObj;

  var controller = Get.find<HotelSelectRoomController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.fillGray10001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgImg19,
          height: 170.v,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
      ),
    );
  }
}
