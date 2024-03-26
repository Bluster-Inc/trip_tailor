import '../models/list2_item_model.dart';
import '../controller/home_scroll_down_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List2ItemWidget extends StatelessWidget {
  List2ItemWidget(
    this.list2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List2ItemModel list2ItemModelObj;

  var controller = Get.find<HomeScrollDownOneController>();

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
                imagePath: list2ItemModelObj.dubaiUEA!.value,
                height: 120.v,
                radius: BorderRadius.circular(
                  14.h,
                ),
              ),
            ),
            SizedBox(height: 15.v),
            Obx(
              () => Text(
                list2ItemModelObj.title!.value,
                style: CustomTextStyles.titleSmallGray900_2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
