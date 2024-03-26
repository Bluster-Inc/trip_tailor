import '../models/list20_item_model.dart';
import '../controller/attaraction_select_location_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List20ItemWidget extends StatelessWidget {
  List20ItemWidget(
    this.list20ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List20ItemModel list20ItemModelObj;

  var controller = Get.find<AttaractionSelectLocationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(12.h),
          decoration: IconButtonStyleHelper.fillGray,
          child: CustomImageView(
            imagePath: ImageConstant.imgLinkedinGray900,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list20ItemModelObj.label!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 8.v),
                Obx(
                  () => Text(
                    list20ItemModelObj.label1!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
