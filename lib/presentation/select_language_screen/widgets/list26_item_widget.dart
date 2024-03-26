import '../models/list26_item_model.dart';
import '../controller/select_language_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List26ItemWidget extends StatelessWidget {
  List26ItemWidget(
    this.list26ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List26ItemModel list26ItemModelObj;

  var controller = Get.find<SelectLanguageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(14.h),
              decoration: IconButtonStyleHelper.fillGrayTL12,
              child: CustomImageView(
                imagePath: list26ItemModelObj.close!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
              bottom: 12.v,
            ),
            child: Obx(
              () => Text(
                list26ItemModelObj.englishUS!.value,
                style: CustomTextStyles.titleMediumMedium,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 12.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 20.adaptSize,
                width: 20.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL12,
                child: CustomImageView(
                  imagePath: list26ItemModelObj.check!.value,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
