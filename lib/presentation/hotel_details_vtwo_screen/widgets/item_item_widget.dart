import '../models/item_item_model.dart';
import '../controller/hotel_details_vtwo_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class ItemItemWidget extends StatelessWidget {
  ItemItemWidget(
    this.itemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ItemItemModel itemItemModelObj;

  var controller = Get.find<HotelDetailsVtwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Container(
          height: 260.v,
          width: 327.h,
          decoration: AppDecoration.gradientGrayToGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImg260x327,
                height: 260.v,
                radius: BorderRadius.circular(
                  12.h,
                ),
                alignment: Alignment.center,
              ),
              CustomElevatedButton(
                height: 24.v,
                width: 65.h,
                text: "lbl_50_off".tr,
                margin: EdgeInsets.only(
                  top: 16.v,
                  right: 16.h,
                ),
                buttonStyle: CustomButtonStyles.outlineGrayTL6,
                buttonTextStyle:
                    CustomTextStyles.labelLargeOnPrimaryContainerBold,
                alignment: Alignment.topRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
