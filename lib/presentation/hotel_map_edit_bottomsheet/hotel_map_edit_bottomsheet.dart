import 'package:trip_tailor/widgets/custom_text_form_field.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/hotel_map_edit_controller.dart';
// ignore_for_file: must_be_immutable
class HotelMapEditBottomsheet extends StatelessWidget {HotelMapEditBottomsheet(this.controller, {Key? key}) : super(key: key);

HotelMapEditController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderTL35), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 8.v, width: 40.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h))), SizedBox(height: 27.v), _buildFrame(), SizedBox(height: 16.v), _buildFormHotelLight(), SizedBox(height: 34.v)])); } 
/// Section Widget
Widget _buildFrame() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_modify".tr, style: CustomTextStyles.titleMedium18_1), CustomImageView(imagePath: ImageConstant.imgCloseGray600, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 2.v), onTap: () {onTapImgClose();})]); } 
/// Section Widget
Widget _buildSearch() { return CustomTextFormField(controller: controller.searchController, hintText: "lbl_los_angeles".tr, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 12.h, vertical: 18.v), child: CustomImageView(imagePath: ImageConstant.imgMapPin, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v), borderDecoration: TextFormFieldStyleHelper.outlineGrayTL16); } 
/// Section Widget
Widget _buildNightCounter() { return Expanded(child: Padding(padding: EdgeInsets.only(left: 6.h), child: CustomTextFormField(controller: controller.nightCounterController, hintText: "lbl_1_night".tr, borderDecoration: TextFormFieldStyleHelper.outlineGrayTL16))); } 
/// Section Widget
Widget _buildSearch1() { return CustomTextFormField(controller: controller.searchController1, hintText: "msg_1_rooms_2_guest".tr, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 12.h, vertical: 18.v), child: CustomImageView(imagePath: ImageConstant.imgUsers, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v), borderDecoration: TextFormFieldStyleHelper.outlineGrayTL16); } 
/// Section Widget
Widget _buildSearch2() { return CustomElevatedButton(text: "lbl_search".tr, buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer); } 
/// Section Widget
Widget _buildFormHotelLight() { return Container(decoration: AppDecoration.outlineBluegray700, child: Column(children: [_buildSearch(), SizedBox(height: 16.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 5.h), padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 15.v), decoration: AppDecoration.outlineGray200.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgThumbsUpGray6001, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 2.v)), Padding(padding: EdgeInsets.only(left: 12.h, top: 4.v), child: Text("lbl_sep_04".tr, style: CustomTextStyles.titleMediumMedium))]))), _buildNightCounter()]), SizedBox(height: 16.v), _buildSearch1(), SizedBox(height: 24.v), _buildSearch2()])); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
 }
