import 'package:trip_tailor/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/my_booking_share_controller.dart';
// ignore_for_file: must_be_immutable
class MyBookingShareBottomsheet extends StatelessWidget {MyBookingShareBottomsheet(this.controller, {Key? key}) : super(key: key);

MyBookingShareController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderTL35), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 8.v, width: 40.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h))), SizedBox(height: 18.v), _buildFrame(), SizedBox(height: 18.v), Divider(), SizedBox(height: 23.v), _buildCopy(), SizedBox(height: 12.v), _buildCopy1(), SizedBox(height: 12.v), _buildCopy2(), SizedBox(height: 12.v), _buildCopy3(), SizedBox(height: 34.v)])); } 
/// Section Widget
Widget _buildFrame() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_share".tr, style: CustomTextStyles.titleMedium18_1), CustomImageView(imagePath: ImageConstant.imgCloseGray600, height: 20.adaptSize, width: 20.adaptSize, onTap: () {onTapImgClose();})]); } 
/// Section Widget
Widget _buildCopy() { return CustomTextFormField(controller: controller.copyController, hintText: "lbl_copy_link".tr, hintStyle: CustomTextStyles.titleSmallGray900_2, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgCopy, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 19.v), borderDecoration: TextFormFieldStyleHelper.fillGray, filled: true, fillColor: appTheme.gray10001); } 
/// Section Widget
Widget _buildCopy1() { return CustomTextFormField(controller: controller.copyController1, hintText: "lbl_instagram".tr, hintStyle: CustomTextStyles.titleSmallGray900_2, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgTablerbrandinstagram, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 19.v), borderDecoration: TextFormFieldStyleHelper.fillGray, filled: true, fillColor: appTheme.gray10001); } 
/// Section Widget
Widget _buildCopy2() { return CustomTextFormField(controller: controller.copyController2, hintText: "lbl_whatsapp".tr, hintStyle: CustomTextStyles.titleSmallGray900_2, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgTablerbrandwhatsapp, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 19.v), borderDecoration: TextFormFieldStyleHelper.fillGray, filled: true, fillColor: appTheme.gray10001); } 
/// Section Widget
Widget _buildCopy3() { return CustomTextFormField(controller: controller.copyController3, hintText: "lbl_others".tr, hintStyle: CustomTextStyles.titleSmallGray900_2, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgDotsverticalGray600, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 19.v), borderDecoration: TextFormFieldStyleHelper.fillGray, filled: true, fillColor: appTheme.gray10001); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
 }
