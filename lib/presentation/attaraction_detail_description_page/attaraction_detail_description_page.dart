import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/attaraction_detail_description_controller.dart';
import 'models/attaraction_detail_description_model.dart';

class AttaractionDetailDescriptionPage extends StatelessWidget {
  AttaractionDetailDescriptionPage({Key? key})
      : super(
          key: key,
        );

  AttaractionDetailDescriptionController controller = Get.put(
      AttaractionDetailDescriptionController(
          AttaractionDetailDescriptionModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 28.v),
                SizedBox(
                  height: 617.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_disneyland_parks".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                              SizedBox(height: 15.v),
                              Container(
                                width: 312.h,
                                margin: EdgeInsets.only(right: 13.h),
                                child: Text(
                                  "msg_the_happiest_place2".tr,
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                    height: 1.70,
                                  ),
                                ),
                              ),
                              SizedBox(height: 11.v),
                              SizedBox(
                                width: 325.h,
                                child: Text(
                                  "msg_for_first_time_visitors".tr,
                                  maxLines: 12,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                    height: 1.70,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.v),
                              Container(
                                width: 312.h,
                                margin: EdgeInsets.only(right: 13.h),
                                child: Text(
                                  "msg_dates_1_6_refer".tr,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                    height: 1.70,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Text(
                                "msg_each_park_features".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildBottomBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 502.v,
          bottom: 47.v,
        ),
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
                          text: "lbl_255".tr,
                          style: CustomTextStyles.titleLargeff111827,
                        ),
                        TextSpan(
                          text: "lbl_adult2".tr,
                          style: CustomTextStyles.titleSmallff111827,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_include_taxes_and".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              width: 159.h,
              text: "lbl_find_a_ticket".tr,
              margin: EdgeInsets.only(top: 12.v),
            ),
          ],
        ),
      ),
    );
  }
}
