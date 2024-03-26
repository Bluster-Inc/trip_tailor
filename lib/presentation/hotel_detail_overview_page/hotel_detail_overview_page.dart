import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_detail_overview_controller.dart';
import 'models/hotel_detail_overview_model.dart';

class HotelDetailOverviewPage extends StatelessWidget {
  HotelDetailOverviewPage({Key? key})
      : super(
          key: key,
        );

  HotelDetailOverviewController controller =
      Get.put(HotelDetailOverviewController(HotelDetailOverviewModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 172.v),
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "msg_mariposa_los_angeles".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Container(
                    width: 295.h,
                    margin: EdgeInsets.only(
                      left: 24.h,
                      right: 56.h,
                    ),
                    child: Text(
                      "msg_transformed_3_5_star".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(
                        height: 1.70,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 327.h,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Text(
                        "msg_a_coffee_shop_cafe".tr,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall!.copyWith(
                          height: 1.70,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Container(
                    width: 315.h,
                    margin: EdgeInsets.only(
                      left: 24.h,
                      right: 36.h,
                    ),
                    child: Text(
                      "msg_additional_perks".tr,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(
                        height: 1.70,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 320.h,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        right: 31.h,
                      ),
                      child: Text(
                        "msg_all_94_individually".tr,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall!.copyWith(
                          height: 1.70,
                        ),
                      ),
                    ),
                  ),
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
      decoration: AppDecoration.outlineGrayF,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_120".tr,
                        style: CustomTextStyles.titleLargeff111827,
                      ),
                      TextSpan(
                        text: "lbl_night".tr,
                        style: CustomTextStyles.titleSmallff111827,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
                Text(
                  "msg_include_taxes_and".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 159.h,
            text: "lbl_select_a_room".tr,
            margin: EdgeInsets.only(top: 12.v),
          ),
        ],
      ),
    );
  }
}
