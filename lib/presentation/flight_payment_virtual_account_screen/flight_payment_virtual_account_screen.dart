import 'package:trip_tailor/widgets/custom_icon_button.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/flight_payment_virtual_account_controller.dart';class FlightPaymentVirtualAccountScreen extends GetWidget<FlightPaymentVirtualAccountController> {const FlightPaymentVirtualAccountScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(height: SizeUtils.height, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildFortySeven(), SizedBox(height: 23.v), _buildCardBooking(), SizedBox(height: 28.v), _buildTitle(), SizedBox(height: 16.v), _buildPaymentVirtual(), SizedBox(height: 29.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_payment_instructions".tr, style: theme.textTheme.titleMedium))), SizedBox(height: 16.v), _buildDropdownList()])), _buildBottomBar()])))); } 
/// Section Widget
Widget _buildFortySeven() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v), decoration: AppDecoration.fillPrimary, child: Column(children: [SizedBox(height: 46.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 4.v, bottom: 8.v), onTap: () {onTapImgArrowLeft();}), Column(children: [Text("lbl_payment".tr, style: CustomTextStyles.titleSmallOnPrimaryContainer), SizedBox(height: 5.v), Text("msg_booking_id_23456xx".tr, style: CustomTextStyles.labelLargeCyanA100_1)]), Padding(padding: EdgeInsets.only(top: 4.v, bottom: 8.v), child: CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(5.h), child: CustomImageView(imagePath: ImageConstant.imgProfileCyanA100)))]), SizedBox(height: 24.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 18.adaptSize, width: 18.adaptSize, padding: EdgeInsets.all(4.h), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgCheckBlueGray8000110x10, height: 10.adaptSize, width: 10.adaptSize, alignment: Alignment.center)), Text("lbl_select_method".tr, style: CustomTextStyles.labelLargeOnPrimaryContainerBold), Container(height: 2.v, width: 15.h, margin: EdgeInsets.symmetric(vertical: 8.v), decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(1.h))), Container(width: 18.adaptSize, padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 1.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_2".tr, style: CustomTextStyles.labelLargePrimaryBold)), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_payment".tr, style: CustomTextStyles.labelLargeOnPrimaryContainerBold)), Container(height: 2.v, width: 15.h, margin: EdgeInsets.symmetric(vertical: 8.v), decoration: BoxDecoration(color: appTheme.cyanA100, borderRadius: BorderRadius.circular(1.h))), Container(width: 18.adaptSize, padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 1.v), decoration: AppDecoration.outlineCyanA10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_3".tr, style: CustomTextStyles.labelLargeCyanA10001)), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_complete".tr, style: CustomTextStyles.labelLargeCyanA100_1))])])); } 
/// Section Widget
Widget _buildSIN() { return CustomElevatedButton(height: 22.v, width: 42.h, text: "lbl_sin".tr, buttonStyle: CustomButtonStyles.fillGrayTL6, buttonTextStyle: CustomTextStyles.labelMediumPlusJakartaSans); } 
/// Section Widget
Widget _buildLHR() { return CustomElevatedButton(height: 22.v, width: 44.h, text: "lbl_lhr".tr, buttonStyle: CustomButtonStyles.fillGrayTL6, buttonTextStyle: CustomTextStyles.labelMediumPlusJakartaSans, alignment: Alignment.centerRight); } 
/// Section Widget
Widget _buildOne() { return CustomElevatedButton(height: 22.v, width: 22.h, text: "lbl_01".tr, buttonStyle: CustomButtonStyles.fillLightBlue, buttonTextStyle: CustomTextStyles.labelMediumPrimary); } 
/// Section Widget
Widget _buildCardBooking() { return Container(margin: EdgeInsets.symmetric(horizontal: 23.h), padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgQatarAirwaysSvg, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h, top: 3.v), child: Text("lbl_qatar_airways".tr, style: CustomTextStyles.labelLargeGray900_1)), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: Text("lbl_see_details".tr, style: CustomTextStyles.labelLargePrimaryBold))]), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_11_05_pm".tr, style: CustomTextStyles.titleSmallGray900_2), SizedBox(height: 7.v), _buildSIN()]), CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray100, height: 6.v, margin: EdgeInsets.only(left: 26.h, top: 18.v, bottom: 22.v)), CustomImageView(imagePath: ImageConstant.imgAirplaneBlueGray30001, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 4.h, top: 9.v, bottom: 13.v)), CustomImageView(imagePath: ImageConstant.imgBarcode, height: 6.v, margin: EdgeInsets.only(left: 4.h, top: 18.v, bottom: 22.v)), Padding(padding: EdgeInsets.only(left: 21.h), child: Column(children: [Text("lbl_10_30_am".tr, style: CustomTextStyles.titleSmallGray900_2), SizedBox(height: 7.v), _buildLHR()]))]), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text("msg_complete_your_payment".tr, style: CustomTextStyles.labelLargeGray900)), Spacer(), _buildOne(), CustomImageView(imagePath: ImageConstant.imgTitle, width: 2.h, margin: EdgeInsets.only(left: 6.h, top: 7.v, bottom: 7.v)), Container(width: 22.adaptSize, margin: EdgeInsets.only(left: 6.h), padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 4.v), decoration: AppDecoration.fillLightBlue.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_452".tr, style: CustomTextStyles.labelMediumPrimary)), CustomImageView(imagePath: ImageConstant.imgTitle, width: 2.h, margin: EdgeInsets.only(left: 6.h, top: 7.v, bottom: 7.v)), Container(width: 22.adaptSize, margin: EdgeInsets.only(left: 6.h), padding: EdgeInsets.all(4.h), decoration: AppDecoration.fillLightBlue.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_00".tr, style: CustomTextStyles.labelMediumPrimary))])])); } 
/// Section Widget
Widget _buildTitle() { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_payment_information".tr, style: theme.textTheme.titleMedium), Text("lbl_change".tr, style: CustomTextStyles.titleSmallPrimaryBold)])); } 
/// Section Widget
Widget _buildPaymentVirtual() { return Container(margin: EdgeInsets.symmetric(horizontal: 23.h), padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 81.h), child: Row(children: [Container(height: 32.v, width: 41.h, padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 8.v), decoration: AppDecoration.outlineGray200.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgSettingsLightBlue900, height: 13.v, alignment: Alignment.topCenter)), Padding(padding: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 7.v), child: Text("msg_citibank_virtual".tr, style: CustomTextStyles.titleSmallGray900_2))])), SizedBox(height: 16.v), Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), decoration: AppDecoration.fillGray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 1.v), child: Text("lbl_1024_5678_8967".tr, style: CustomTextStyles.titleSmallGray900)), CustomImageView(imagePath: ImageConstant.imgBagPrimary, height: 20.adaptSize, width: 20.adaptSize)])), SizedBox(height: 16.v), Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v), decoration: AppDecoration.fillGray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_total_payment2".tr, style: theme.textTheme.labelLarge)), Text("lbl_744_00".tr, style: CustomTextStyles.titleSmallGray900)]))])); } 
/// Section Widget
Widget _buildDropdownList() { return Container(margin: EdgeInsets.symmetric(horizontal: 23.h), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildDropdown(title: "msg_transfer_via_atm".tr), SizedBox(height: 14.v), Divider(), Divider(), SizedBox(height: 13.v), _buildDropdown(title: "msg_transfer_via_citi".tr)])); } 
/// Section Widget
Widget _buildCompletePayment() { return CustomElevatedButton(text: "msg_complete_payment".tr); } 
/// Section Widget
Widget _buildBottomBar() { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), decoration: AppDecoration.outlineGrayF, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 12.v), _buildCompletePayment()]))); } 
/// Common widget
Widget _buildDropdown({required String title}) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(title, style: CustomTextStyles.labelLargeGray900.copyWith(color: appTheme.gray900)), CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 16.adaptSize, width: 16.adaptSize)]); } 

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); } 
 }