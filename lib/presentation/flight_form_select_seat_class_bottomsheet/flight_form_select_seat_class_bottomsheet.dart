import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/flight_form_select_seat_class_controller.dart';
// ignore_for_file: must_be_immutable
class FlightFormSelectSeatClassBottomsheet extends StatelessWidget {FlightFormSelectSeatClassBottomsheet(this.controller, {Key? key}) : super(key: key);

FlightFormSelectSeatClassController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderTL35), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 8.v, width: 40.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h))), SizedBox(height: 18.v), _buildCard(label: "lbl_seat_class2".tr, check: ImageConstant.imgCloseGray600, onTapCheck1: () {onTapCheck();}), SizedBox(height: 18.v), Divider(), SizedBox(height: 29.v), _buildCard(label: "lbl_economy".tr, check: ImageConstant.imgCheckPrimary20x20), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_premium_economy".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 29.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_business_class".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_frist_class".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 37.v), CustomElevatedButton(text: "lbl_confirm".tr), SizedBox(height: 26.v)])); } 
/// Common widget
Widget _buildCard({required String label, required String check, Function? onTapCheck1, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text(label, style: CustomTextStyles.titleMediumPrimaryMedium.copyWith(color: theme.colorScheme.primary))), CustomImageView(imagePath: check, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 2.v), onTap: () {onTapCheck1?.call();})]); } 

/// Navigates to the previous screen.
onTapCheck() { Get.back(); } 
 }
