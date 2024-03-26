import 'package:trip_tailor/widgets/custom_text_form_field.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/train_result_list_detail_journey_controller.dart';
import 'models/train_result_list_detail_journey_model.dart';

class TrainResultListDetailJourneyPage extends StatelessWidget {
  TrainResultListDetailJourneyPage({Key? key})
      : super(
          key: key,
        );

  TrainResultListDetailJourneyController controller = Get.put(
      TrainResultListDetailJourneyController(
          TrainResultListDetailJourneyModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                    padding: EdgeInsets.all(20.h),
                    decoration: AppDecoration.outlineBluegray7002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgReply,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                SizedBox(height: 9.v),
                                Text(
                                  "lbl_06_10_am".tr,
                                  style: CustomTextStyles.titleMedium18,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "msg_union_station_los".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImg26,
                              height: 72.adaptSize,
                              width: 72.adaptSize,
                              radius: BorderRadius.circular(
                                12.h,
                              ),
                              margin: EdgeInsets.only(top: 3.v),
                            ),
                          ],
                        ),
                        SizedBox(height: 22.v),
                        Divider(),
                        SizedBox(height: 19.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgTrainRedA100,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                SizedBox(height: 9.v),
                                Text(
                                  "lbl_09_50_am".tr,
                                  style: CustomTextStyles.titleMedium18,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "msg_old_town_station".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImg27,
                              height: 72.adaptSize,
                              width: 72.adaptSize,
                              radius: BorderRadius.circular(
                                12.h,
                              ),
                              margin: EdgeInsets.only(top: 3.v),
                            ),
                          ],
                        ),
                        SizedBox(height: 25.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 16.v,
                          ),
                          decoration: AppDecoration.outlineBluegray100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "lbl_amtrak".tr,
                                    style: CustomTextStyles.labelLargeGray900,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgAmtrakSvg,
                                    height: 12.v,
                                    margin: EdgeInsets.only(left: 8.h),
                                  ),
                                  Spacer(),
                                  Text(
                                    "msg_562_pacific_hunter".tr,
                                    style: CustomTextStyles.labelLargeGray900,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.v),
                              CustomTextFormField(
                                controller: controller.durationController,
                                hintText: "msg_friday_26_aug_2022".tr,
                                hintStyle: theme.textTheme.labelMedium!,
                                textInputAction: TextInputAction.done,
                                borderDecoration:
                                    TextFormFieldStyleHelper.underLineGray,
                              ),
                              Divider(),
                              SizedBox(height: 12.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgTablerSnowflake,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.h,
                                      top: 2.v,
                                    ),
                                    child: Text(
                                      "msg_air_conditioning2".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgNavExplore,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      "msg_entertainment_available".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSettingsBlueGray30001,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      "lbl_wifi_available".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgTablerUsb,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      "msg_power_usb_available".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 84.v),
                  _buildBottomBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "lbl_35_00".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDownBlueGray30001,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 4.v,
                        bottom: 4.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_get".tr,
                        style: CustomTextStyles.labelLargeff6b7280,
                      ),
                      TextSpan(
                        text: "lbl_1_000_points".tr,
                        style: CustomTextStyles.labelLargee816d4e9,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 159.h,
            text: "lbl_select".tr,
            margin: EdgeInsets.only(top: 12.v),
          ),
        ],
      ),
    );
  }
}
