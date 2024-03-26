import '../models/img3_item_model.dart';
import '../controller/hotel_select_room_detail_photos_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Img3ItemWidget extends StatelessWidget {
  Img3ItemWidget(
    this.img3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Img3ItemModel img3ItemModelObj;

  var controller = Get.find<HotelSelectRoomDetailPhotosController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Obx(
        () => CustomImageView(
          imagePath: img3ItemModelObj.img!.value,
          width: 156.h,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
      ),
    );
  }
}
