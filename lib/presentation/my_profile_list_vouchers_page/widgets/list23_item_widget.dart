import '../models/list23_item_model.dart';
import '../controller/my_profile_list_vouchers_controller.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List23ItemWidget extends StatelessWidget {
  List23ItemWidget(
    this.list23ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List23ItemModel list23ItemModelObj;

  var controller = Get.find<MyProfileListVouchersController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 100.v,
        width: 327.h,
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: list23ItemModelObj.upto!.value,
                height: 7.v,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 4.v),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector58x220,
              height: 58.v,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector58x220,
              height: 40.v,
              alignment: Alignment.bottomLeft,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90.v,
                      width: 150.h,
                      margin: EdgeInsets.only(bottom: 12.v),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath: list23ItemModelObj.upto1!.value,
                              height: 7.v,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 5.h),
                            ),
                          ),
                          Obx(
                            () => CustomImageView(
                              imagePath: list23ItemModelObj.upto2!.value,
                              height: 1.v,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 1.v),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorLightBlueA2001x1,
                            height: 1.adaptSize,
                            width: 1.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 4.v,
                              right: 17.h,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorLightBlueA2001x1,
                                    height: 1.adaptSize,
                                    width: 1.adaptSize,
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(right: 5.h),
                                  ),
                                  SizedBox(height: 1.v),
                                  Obx(
                                    () => CustomImageView(
                                      imagePath:
                                          list23ItemModelObj.upto3!.value,
                                      height: 1.v,
                                      margin: EdgeInsets.only(left: 4.h),
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                    height: 79.v,
                                    width: 149.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVectorLightBlueA2001x1,
                                          height: 1.adaptSize,
                                          width: 1.adaptSize,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 1.h),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 79.v,
                                            width: 149.h,
                                            child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    height: 30.v,
                                                    width: 23.h,
                                                    margin: EdgeInsets.only(
                                                        top: 17.v),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Opacity(
                                                          opacity: 0.5,
                                                          child:
                                                              CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup,
                                                            height: 7.v,
                                                            alignment: Alignment
                                                                .topCenter,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                            width: 12.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 2.h),
                                                            child: Obx(
                                                              () => Text(
                                                                list23ItemModelObj
                                                                    .title!
                                                                    .value,
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: CustomTextStyles
                                                                    .labelMediumCyan100,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    height: 19.v,
                                                    width: 113.h,
                                                    margin: EdgeInsets.only(
                                                        left: 9.h),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Opacity(
                                                          opacity: 0.5,
                                                          child:
                                                              CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup,
                                                            height: 7.v,
                                                            alignment: Alignment
                                                                .topLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 41.h),
                                                          ),
                                                        ),
                                                        Opacity(
                                                          opacity: 0.5,
                                                          child:
                                                              CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup,
                                                            height: 7.v,
                                                            alignment: Alignment
                                                                .bottomRight,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        2.v),
                                                            child: Obx(
                                                              () => Text(
                                                                list23ItemModelObj
                                                                    .title1!
                                                                    .value,
                                                                style: CustomTextStyles
                                                                    .labelMediumCyanA100,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: SizedBox(
                                                    height: 58.v,
                                                    width: 140.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Opacity(
                                                          opacity: 0.5,
                                                          child:
                                                              CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup,
                                                            height: 7.v,
                                                            alignment: Alignment
                                                                .topLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 46.h,
                                                              top: 2.v,
                                                            ),
                                                          ),
                                                        ),
                                                        Opacity(
                                                          opacity: 0.5,
                                                          child:
                                                              CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup,
                                                            height: 7.v,
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                              right: 8.h,
                                                              bottom: 20.v,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        12.h),
                                                            child: Obx(
                                                              () => Text(
                                                                list23ItemModelObj
                                                                    .title2!
                                                                    .value,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelSmall,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Obx(
                                                            () => Text(
                                                              list23ItemModelObj
                                                                  .offer!.value,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineLarge,
                                                            ),
                                                          ),
                                                        ),
                                                        CustomElevatedButton(
                                                          height: 20.v,
                                                          width: 73.h,
                                                          text: "lbl_holiday001"
                                                              .tr,
                                                          buttonStyle:
                                                              CustomButtonStyles
                                                                  .fillAmber,
                                                          buttonTextStyle:
                                                              CustomTextStyles
                                                                  .labelMediumOnPrimaryContainerBold,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100.v,
                      width: 130.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Opacity(
                            opacity: 0.8,
                            child: Obx(
                              () => CustomImageView(
                                imagePath: list23ItemModelObj.upto4!.value,
                                height: 25.v,
                                alignment: Alignment.topRight,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.8,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup,
                              height: 10.v,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 24.h,
                                top: 32.v,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.8,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup,
                              height: 7.v,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 7.h,
                                top: 11.v,
                              ),
                            ),
                          ),
                          Obx(
                            () => CustomImageView(
                              imagePath: list23ItemModelObj.upto5!.value,
                              height: 100.v,
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
