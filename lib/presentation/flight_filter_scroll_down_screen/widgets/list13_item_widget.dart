import '../models/list13_item_model.dart';
import '../controller/flight_filter_scroll_down_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List13ItemWidget extends StatelessWidget {
  List13ItemWidget(
    this.list13ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List13ItemModel list13ItemModelObj;

  var controller = Get.find<FlightFilterScrollDownController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => Text(
            list13ItemModelObj.title!.value,
            style: CustomTextStyles.titleMediumGray600Medium,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgThumbsUpBlueGray100,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }
}
