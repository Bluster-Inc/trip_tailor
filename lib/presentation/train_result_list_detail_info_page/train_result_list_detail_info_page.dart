import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/train_result_list_detail_info_controller.dart';
import 'models/train_result_list_detail_info_model.dart';

class TrainResultListDetailInfoPage extends StatelessWidget {
  TrainResultListDetailInfoPage({Key? key})
      : super(
          key: key,
        );

  TrainResultListDetailInfoController controller = Get.put(
      TrainResultListDetailInfoController(
          TrainResultListDetailInfoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 27.v),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "lbl_price_details".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),
                    _buildContent(),
                    Spacer(),
                    _buildBottomBar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildAmount(
            title: "msg_adult_basic_fare".tr,
            title1: "lbl_35_00".tr,
          ),
          SizedBox(height: 15.v),
          _buildAmount(
            title: "lbl_tax_and_fees".tr,
            title1: "lbl_included".tr,
          ),
          SizedBox(height: 15.v),
          _buildAmount(
            title: "msg_passenger_service".tr,
            title1: "lbl_free".tr,
          ),
          SizedBox(height: 18.v),
          Divider(),
          SizedBox(height: 18.v),
          _buildAmount(
            title: "lbl_total_payment".tr,
            title1: "lbl_35_00".tr,
          ),
        ],
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

  /// Common widget
  Widget _buildAmount({
    required String title,
    required String title1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Text(
          title1,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }
}
