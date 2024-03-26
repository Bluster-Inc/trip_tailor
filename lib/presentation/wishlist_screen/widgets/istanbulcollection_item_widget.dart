import '../models/istanbulcollection_item_model.dart';
import '../controller/wishlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class IstanbulcollectionItemWidget extends StatelessWidget {
  IstanbulcollectionItemWidget(
    this.istanbulcollectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IstanbulcollectionItemModel istanbulcollectionItemModelObj;

  var controller = Get.find<WishlistController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath:
                      istanbulcollectionItemModelObj.istanbulcollection!.value,
                  height: 150.v,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Column(
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: istanbulcollectionItemModelObj.img!.value,
                      height: 69.v,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Obx(
                    () => CustomImageView(
                      imagePath: istanbulcollectionItemModelObj.img1!.value,
                      height: 69.v,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: Obx(
                    () => Text(
                      istanbulcollectionItemModelObj.label!.value,
                      style: CustomTextStyles.titleSmallGray900,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDotsVertical,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
