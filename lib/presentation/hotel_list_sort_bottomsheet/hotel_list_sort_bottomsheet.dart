import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/hotel_list_sort_controller.dart';
// ignore_for_file: must_be_immutable
class HotelListSortBottomsheet extends StatelessWidget {HotelListSortBottomsheet(this.controller, {Key? key}) : super(key: key);

HotelListSortController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderTL35), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 8.v, width: 40.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h))), SizedBox(height: 19.v), _buildCard(label: "lbl_sort_by".tr, check: ImageConstant.imgCloseGray600, onTapCheck: () {onTapCheck();}), SizedBox(height: 16.v), Divider(), SizedBox(height: 29.v), _buildCard(label: "lbl_recommendation".tr, check: ImageConstant.imgCheckPrimary20x20), SizedBox(height: 33.v), Align(alignment: Alignment.centerLeft, child: Text("msg_price_low_to_high".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 31.v), Align(alignment: Alignment.centerLeft, child: Text("msg_distance_from_city".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_traveler_ranked".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 37.v), CustomElevatedButton(text: "lbl_apply".tr), SizedBox(height: 26.v)])); } 
/// Common widget
Widget _buildCard({required String label, required String check, Function? onTapCheck, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(label, style: CustomTextStyles.titleMediumPrimaryMedium.copyWith(color: theme.colorScheme.primary)), CustomImageView(imagePath: check, height: 20.adaptSize, width: 20.adaptSize, onTap: () {onTapCheck?.call();})]); } 

/// Navigates to the previous screen.
onTapCheck() { Get.back(); } 
 }
