import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title_edittext.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_six.dart';
import 'widgets/nightcounter_item_widget.dart';
import 'models/nightcounter_item_model.dart';
import 'package:trip_tailor/widgets/custom_checkbox_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_select_night_controller.dart';

// ignore_for_file: must_be_immutable
class HotelSelectNightScreen extends GetWidget<HotelSelectNightController> {
  const HotelSelectNightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 42.v),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildNightCounter(),
              SizedBox(height: 96.v),
              _buildBottomBar(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 112.v,
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            AppbarSubtitleSeven(
              text: "lbl_select_night".tr,
              margin: EdgeInsets.only(right: 184.h),
            ),
            SizedBox(height: 10.v),
            AppbarTitleEdittext(
              hintText: "lbl_2_night".tr,
              controller: controller.nightCounterController,
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleSix(
          text: "lbl_clear".tr,
          margin: EdgeInsets.fromLTRB(24.h, 59.v, 24.h, 35.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildNightCounter() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: controller
              .hotelSelectNightModelObj.value.nightcounterItemList.value.length,
          itemBuilder: (context, index) {
            NightcounterItemModel model = controller.hotelSelectNightModelObj
                .value.nightcounterItemList.value[index];
            return NightcounterItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.outlineGrayF,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.v),
          Obx(
            () => CustomCheckboxButton(
              text: "lbl_flexible_night".tr,
              value: controller.flexiblenight.value,
              onChange: (value) {
                controller.flexiblenight.value = value;
              },
            ),
          ),
          SizedBox(height: 17.v),
          CustomElevatedButton(
            text: "lbl_confirm".tr,
          ),
        ],
      ),
    );
  }
}
