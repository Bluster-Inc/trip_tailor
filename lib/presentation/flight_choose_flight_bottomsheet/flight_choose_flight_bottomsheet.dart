import 'widgets/sin1_item_widget.dart';import 'models/sin1_item_model.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/flight_choose_flight_controller.dart';
// ignore_for_file: must_be_immutable
class FlightChooseFlightBottomsheet extends StatelessWidget {FlightChooseFlightBottomsheet(this.controller, {Key? key}) : super(key: key);

FlightChooseFlightController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 16.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderTL35), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 8.v, width: 40.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h))), SizedBox(height: 19.v), _buildFrame(), SizedBox(height: 16.v), Divider(indent: 24.h, endIndent: 24.h), SizedBox(height: 23.v), _buildSIN(), SizedBox(height: 16.v), _buildBottomBar(), SizedBox(height: 22.v)])); } 
/// Section Widget
Widget _buildFrame() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_select_your_fare".tr, style: CustomTextStyles.titleMedium18_1), CustomImageView(imagePath: ImageConstant.imgCloseGray600, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 2.v), onTap: () {onTapImgClose();})])); } 
/// Section Widget
Widget _buildSIN() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 8.0.v), child: SizedBox(width: 295.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray200)));}, itemCount: controller.flightChooseFlightModelObj.value.sin1ItemList.value.length, itemBuilder: (context, index) {Sin1ItemModel model = controller.flightChooseFlightModelObj.value.sin1ItemList.value[index]; return Sin1ItemWidget(model);}))); } 
/// Section Widget
Widget _buildContinue() { return CustomElevatedButton(width: 159.h, text: "lbl_continue".tr, margin: EdgeInsets.only(top: 12.v)); } 
/// Section Widget
Widget _buildBottomBar() { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 17.v, bottom: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Text("lbl_744_00".tr, style: theme.textTheme.titleLarge), CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 4.v))]), SizedBox(height: 7.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_get".tr, style: CustomTextStyles.labelLargeff6b7280), TextSpan(text: "lbl_10_000_points".tr, style: CustomTextStyles.labelLargee816d4e9)]), textAlign: TextAlign.left)])), _buildContinue()])); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
 }
