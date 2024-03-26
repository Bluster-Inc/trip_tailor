import '../models/list16_item_model.dart';
import '../controller/train_select_travel_extra_protection_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List16ItemWidget extends StatelessWidget {
  List16ItemWidget(
    this.list16ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List16ItemModel list16ItemModelObj;

  var controller = Get.find<TrainSelectTravelExtraProtectionController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlinePrimary3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: list16ItemModelObj.freeprotections!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 96.v),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                bottom: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Obx(
                          () => Text(
                            list16ItemModelObj.label!.value,
                            style: CustomTextStyles.titleSmallGray900,
                          ),
                        ),
                      ),
                      Obx(
                        () => CustomIconButton(
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          padding: EdgeInsets.all(3.h),
                          decoration: IconButtonStyleHelper.fillPrimary,
                          child: CustomImageView(
                            imagePath: list16ItemModelObj.check!.value,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 11.v),
                  Container(
                    width: 241.h,
                    margin: EdgeInsets.only(right: 17.h),
                    child: Obx(
                      () => Text(
                        list16ItemModelObj.description!.value,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelLarge!.copyWith(
                          height: 1.70,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Obx(
                    () => Text(
                      list16ItemModelObj.label1!.value,
                      style: CustomTextStyles.labelLargePrimaryBold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
