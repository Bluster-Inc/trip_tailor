import '../models/list3_item_model.dart';
import '../controller/home_scroll_down_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List3ItemWidget extends StatelessWidget {
  List3ItemWidget(
    this.list3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List3ItemModel list3ItemModelObj;

  var controller = Get.find<HomeScrollDownTwoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 193.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: list3ItemModelObj.dubaiUEA!.value,
                height: 120.v,
                radius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
            SizedBox(height: 15.v),
            Obx(
              () => Text(
                list3ItemModelObj.title!.value,
                style: CustomTextStyles.titleSmallGray900_2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
