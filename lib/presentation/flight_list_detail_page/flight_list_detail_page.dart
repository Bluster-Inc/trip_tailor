import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/flight_list_detail_controller.dart';
import 'models/flight_list_detail_model.dart';

class FlightListDetailPage extends StatelessWidget {
  FlightListDetailPage({Key? key})
      : super(
          key: key,
        );

  FlightListDetailController controller =
      Get.put(FlightListDetailController(FlightListDetailModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                                  imagePath:
                                      ImageConstant.imgAirplanePrimary24x24,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                SizedBox(height: 9.v),
                                Text(
                                  "lbl_11_05_pm_sin".tr,
                                  style: CustomTextStyles.titleMedium18,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "lbl_changi_airport".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                            Container(
                              height: 72.adaptSize,
                              width: 72.adaptSize,
                              margin: EdgeInsets.only(top: 3.v),
                              decoration:
                                  AppDecoration.gradientGrayToGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder12,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUnsplashCjsssq7yedk,
                                height: 71.v,
                                alignment: Alignment.center,
                              ),
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
                                  imagePath: ImageConstant.imgAirplaneRedA100,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                SizedBox(height: 9.v),
                                Text(
                                  "lbl_10_30_am_lhr".tr,
                                  style: CustomTextStyles.titleMedium18,
                                ),
                                SizedBox(height: 7.v),
                                Text(
                                  "lbl_heatrow_airport".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUnsplashMdjq0zfuwrw,
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
                          padding: EdgeInsets.all(15.h),
                          decoration: AppDecoration.outlineBluegray100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3.v),
                                            child: Text(
                                              "lbl_qatar_airways".tr,
                                              style: CustomTextStyles
                                                  .labelLargeGray900,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgQatarAirwaysSvg,
                                            height: 18.adaptSize,
                                            width: 18.adaptSize,
                                            margin: EdgeInsets.only(left: 8.h),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 9.v),
                                      SizedBox(
                                        width: 129.h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "lbl_friday_26_aug".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Container(
                                              height: 4.adaptSize,
                                              width: 4.adaptSize,
                                              margin: EdgeInsets.only(
                                                top: 2.v,
                                                bottom: 5.v,
                                              ),
                                              decoration: BoxDecoration(
                                                color: appTheme.blueGray100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  2.h,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "lbl_economy".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 3.v,
                                      bottom: 20.v,
                                    ),
                                    child: Text(
                                      "lbl_boeing_787".tr,
                                      style: CustomTextStyles.labelLargeGray900,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.v),
                              Divider(),
                              SizedBox(height: 12.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgThumbsUpBlueGray30001,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.h,
                                      top: 2.v,
                                    ),
                                    child: Text(
                                      "lbl_baggage_7_kg".tr,
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
                  SizedBox(height: 82.v),
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
                      "lbl_744_00".tr,
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
                        text: "lbl_10_000_points".tr,
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
