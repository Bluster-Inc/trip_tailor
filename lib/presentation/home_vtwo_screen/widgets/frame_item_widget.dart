import '../models/frame_item_model.dart';
import '../controller/home_vtwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<HomeVtwoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            height: 240.v,
            width: 200.h,
            decoration: AppDecoration.gradientGrayToGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: frameItemModelObj.stPeachtree!.value,
                    width: 200.h,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 20.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoriteGray900,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerRight,
                        ),
                        SizedBox(height: 135.v),
                        Obx(
                          () => Text(
                            frameItemModelObj.title!.value,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgMapPinOnprimarycontainer,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Obx(
                                () => Text(
                                  frameItemModelObj.label!.value,
                                  style: CustomTextStyles
                                      .labelLargeOnPrimaryContainer,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
