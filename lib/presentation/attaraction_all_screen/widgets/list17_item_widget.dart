import '../models/list17_item_model.dart';
import '../controller/attaraction_all_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List17ItemWidget extends StatelessWidget {
  List17ItemWidget(
    this.list17ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List17ItemModel list17ItemModelObj;

  var controller = Get.find<AttaractionAllController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Container(
                  height: 150.v,
                  width: 240.h,
                  decoration: AppDecoration.gradientGrayToGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: list17ItemModelObj.disneylandPark!.value,
                          height: 150.v,
                          radius: BorderRadius.circular(
                            16.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 110.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomElevatedButton(
                                height: 20.v,
                                width: 54.h,
                                text: "lbl_50_off".tr,
                                margin: EdgeInsets.only(bottom: 4.v),
                                buttonStyle: CustomButtonStyles.fillAmber,
                                buttonTextStyle: CustomTextStyles
                                    .labelMediumOnPrimaryContainerBold,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgFavoriteGray900,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              Obx(
                () => Text(
                  list17ItemModelObj.title!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 8.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedinGray600,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Obx(
                      () => Text(
                        list17ItemModelObj.label!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.v),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_255".tr,
                          style: CustomTextStyles.titleMediumff111827_1,
                        ),
                        TextSpan(
                          text: "lbl_adults2".tr,
                          style: CustomTextStyles.labelLargeff6b7280,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgStarGray600,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 77.h,
                      top: 3.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Obx(
                      () => Text(
                        list17ItemModelObj.label1!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
