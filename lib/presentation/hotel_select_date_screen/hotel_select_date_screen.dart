import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_select_date_controller.dart';

// ignore_for_file: must_be_immutable
class HotelSelectDateScreen extends GetWidget<HotelSelectDateController> {
  const HotelSelectDateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTopBar(),
              SizedBox(height: 68.v),
              SizedBox(
                height: 590.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDay(),
                            SizedBox(height: 29.v),
                            _buildCalendar(),
                            SizedBox(height: 23.v),
                            _buildCalendar1(),
                            SizedBox(height: 26.v),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_18".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray900_2,
                                    ),
                                    Text(
                                      "lbl_19".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray900_2,
                                    ),
                                    Text(
                                      "lbl_20".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray900_2,
                                    ),
                                    Text(
                                      "lbl_21".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray900_2,
                                    ),
                                    Text(
                                      "lbl_22".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray900_2,
                                    ),
                                    Text(
                                      "lbl_23".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray900_2,
                                    ),
                                    Text(
                                      "lbl_24".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray900_2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 26.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 13.h,
                                right: 60.h,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "lbl_25".tr,
                                    style: CustomTextStyles.titleSmallGray900_2,
                                  ),
                                  Spacer(
                                    flex: 19,
                                  ),
                                  Text(
                                    "lbl_26".tr,
                                    style: CustomTextStyles.titleSmallGray900_2,
                                  ),
                                  Spacer(
                                    flex: 20,
                                  ),
                                  Text(
                                    "lbl_27".tr,
                                    style: CustomTextStyles.titleSmallGray900_2,
                                  ),
                                  Spacer(
                                    flex: 20,
                                  ),
                                  Text(
                                    "lbl_28".tr,
                                    style: CustomTextStyles.titleSmallGray900_2,
                                  ),
                                  Spacer(
                                    flex: 20,
                                  ),
                                  Text(
                                    "lbl_29".tr,
                                    style: CustomTextStyles.titleSmallGray900_2,
                                  ),
                                  Spacer(
                                    flex: 20,
                                  ),
                                  Text(
                                    "lbl_30".tr,
                                    style: CustomTextStyles.titleSmallGray900_2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildBottomBar(),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopBar() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_select_date".tr,
            style: CustomTextStyles.titleSmallCyanA100Bold,
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(11.h),
                  decoration: AppDecoration.outlineCyanA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 4.v,
                        ),
                        child: Text(
                          "msg_sun_28_aug_tue".tr,
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainerMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
                child: Text(
                  "lbl_clear".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDay() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "lbl_s".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
          Text(
            "lbl_m".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
          Text(
            "lbl_t".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
          Text(
            "lbl_w".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
          Text(
            "lbl_t".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
          Text(
            "lbl_f".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
          Text(
            "lbl_s".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar() {
    return Obx(
      () => SizedBox(
        height: 238.v,
        width: 313.h,
        child: CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.single,
            firstDate: DateTime(DateTime.now().year - 5),
            lastDate: DateTime(DateTime.now().year + 5),
            selectedDayHighlightColor: Color(0XFFE8FCFF),
            firstDayOfWeek: 0,
            todayTextStyle: TextStyle(
              color: appTheme.gray900,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w500,
            ),
            selectedDayTextStyle: TextStyle(
              color: Color(0XFF111827),
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
            ),
            dayTextStyle: TextStyle(
              color: appTheme.gray600,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w500,
            ),
            dayBorderRadius: BorderRadius.circular(
              10.h,
            ),
          ),
          value: controller.selectedDatesFromCalendar1.value,
          onValueChanged: (dates) {
            controller.selectedDatesFromCalendar1.value = dates;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar1() {
    return Obx(
      () => SizedBox(
        height: 139.v,
        width: 311.h,
        child: CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.single,
            firstDate: DateTime(DateTime.now().year - 5),
            lastDate: DateTime(DateTime.now().year + 5),
            firstDayOfWeek: 0,
            dayTextStyle: TextStyle(
              color: appTheme.gray900,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w500,
            ),
          ),
          value: controller.selectedDatesFromCalendar2.value,
          onValueChanged: (dates) {
            controller.selectedDatesFromCalendar2.value = dates;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        decoration: AppDecoration.outlineGrayF,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_my_dates_are_flexible".tr,
                    style: CustomTextStyles.titleMediumMedium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 17.v),
            CustomElevatedButton(
              text: "lbl_confirm".tr,
            ),
          ],
        ),
      ),
    );
  }
}
