import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/flight_sort_controller.dart';
// ignore_for_file: must_be_immutable
class FlightSortBottomsheet extends StatelessWidget {FlightSortBottomsheet(this.controller, {Key? key}) : super(key: key);

FlightSortController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderTL35), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 8.v, width: 40.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h))), SizedBox(height: 19.v), _buildCard(label: "lbl_sort_by".tr, check: ImageConstant.imgCloseGray600, onTapCheck2: () {onTapCheck();}), SizedBox(height: 16.v), Divider(), SizedBox(height: 29.v), _buildCard(label: "lbl_recommendation".tr, check: ImageConstant.imgCheckPrimary20x20), SizedBox(height: 33.v), Align(alignment: Alignment.centerLeft, child: Text("msg_price_low_to_high".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: Text("msg_duration_longest".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: Text("msg_departure_earliest".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 36.v), CustomElevatedButton(text: "lbl_apply".tr), SizedBox(height: 26.v)])); } 
/// Common widget
Widget _buildCard({required String label, required String check, Function? onTapCheck2, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(label, style: CustomTextStyles.titleMediumPrimaryMedium.copyWith(color: theme.colorScheme.primary)), CustomImageView(imagePath: check, height: 20.adaptSize, width: 20.adaptSize, onTap: () {onTapCheck2?.call();})]); } 

/// Navigates to the previous screen.
onTapCheck() { Get.back(); } 
 }
