import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/custom_switch.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/setting_controller.dart';class SettingScreen extends GetWidget<SettingController> {const SettingScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 20.v), child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_account_security".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 8.v), _buildItem(lock: ImageConstant.imgLockBlueGray30001, title: "msg_email_mobile_number".tr, arrowRight: ImageConstant.imgArrowDownBlueGray30001), _buildItem(lock: ImageConstant.imgLockBlueGray3000120x20, title: "msg_security_setting".tr, arrowRight: ImageConstant.imgArrowDownBlueGray30001), SizedBox(height: 27.v), Text("lbl_preference".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 10.v), _buildItem1(clock: ImageConstant.imgGlobe, title: "lbl_country".tr, title1: "lbl_united_states".tr), _buildItem1(clock: ImageConstant.imgClockBlueGray3000120x20, title: "lbl_currency".tr, title1: "lbl_dollar_us".tr), _buildItem1(clock: ImageConstant.imgGlobe, title: "lbl_language".tr, title1: "lbl_english".tr), _buildItem(lock: ImageConstant.imgNavProfile, title: "msg_notification_setting".tr, arrowRight: ImageConstant.imgArrowDownBlueGray30001), _buildItem(lock: ImageConstant.imgNotificationBlueGray30001, title: "msg_newsletter_promo".tr, arrowRight: ImageConstant.imgArrowDownBlueGray30001), _buildItem9(), _buildItem10(), SizedBox(height: 27.v), Text("lbl_others".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 10.v), _buildItem(lock: ImageConstant.imgMinimize, title: "lbl_app_version".tr, arrowRight: ImageConstant.imgArrowDownBlueGray30001), _buildItem(lock: ImageConstant.imgFile, title: "msg_terms_conditions".tr, arrowRight: ImageConstant.imgArrowDownBlueGray30001), _buildItem(lock: ImageConstant.imgTelevisionBlueGray3000120x20, title: "lbl_privacy_policy".tr, arrowRight: ImageConstant.imgArrowDownBlueGray30001), _buildItem(lock: ImageConstant.imgDiamond, title: "lbl_about_us".tr, arrowRight: ImageConstant.imgArrowDownBlueGray30001), SizedBox(height: 40.v), _buildItem(lock: ImageConstant.imgTelevisionRedA200, title: "lbl_log_out".tr, arrowRight: ImageConstant.imgArrowRightRedA200)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_setting".tr)); } 
/// Section Widget
Widget _buildItem9() { return Container(padding: EdgeInsets.only(top: 16.v, bottom: 15.v), decoration: AppDecoration.outlineGray2001, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgMapPinBlueGray30001, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 3.v), child: Text("lbl_location".tr, style: CustomTextStyles.titleSmallGray900_2)), Spacer(), Obx(() => CustomSwitch(value: controller.isSelectedSwitch.value, onChange: (value) {controller.isSelectedSwitch.value = value;}))])); } 
/// Section Widget
Widget _buildItem10() { return Container(padding: EdgeInsets.only(top: 16.v, bottom: 15.v), decoration: AppDecoration.outlineGray2001, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgMobileBlueGray30001, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 3.v), child: Text("lbl_dark_theme".tr, style: CustomTextStyles.titleSmallGray900_2)), Spacer(), Obx(() => CustomSwitch(value: controller.isSelectedSwitch1.value, onChange: (value) {controller.isSelectedSwitch1.value = value;}))])); } 
/// Common widget
Widget _buildItem({required String lock, required String title, required String arrowRight, }) { return Container(padding: EdgeInsets.symmetric(vertical: 17.v), decoration: AppDecoration.outlineGray2001, child: Row(children: [CustomImageView(imagePath: lock, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 3.v), child: Text(title, style: CustomTextStyles.titleSmallGray900_2.copyWith(color: appTheme.gray900))), Spacer(), CustomImageView(imagePath: arrowRight, height: 20.adaptSize, width: 20.adaptSize)])); } 
/// Common widget
Widget _buildItem1({required String clock, required String title, required String title1, }) { return Container(padding: EdgeInsets.symmetric(vertical: 17.v), decoration: AppDecoration.outlineGray2001, child: Row(children: [CustomImageView(imagePath: clock, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 3.v), child: Text(title, style: CustomTextStyles.titleSmallGray900_2.copyWith(color: appTheme.gray900))), Spacer(), Text(title1, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray600)), CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 8.h))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }