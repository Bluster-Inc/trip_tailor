import '../models/img4_item_model.dart';
import '../controller/attaraction_detail_photos_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class Img4ItemWidget extends StatelessWidget {
  Img4ItemWidget(
    this.img4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Img4ItemModel img4ItemModelObj;

  var controller = Get.find<AttaractionDetailPhotosController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: img4ItemModelObj.img!.value,
        width: 156.h,
        radius: BorderRadius.circular(
          12.h,
        ),
      ),
    );
  }
}
