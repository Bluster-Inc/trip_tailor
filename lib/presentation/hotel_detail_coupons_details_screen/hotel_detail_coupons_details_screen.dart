import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/hotel_detail_coupons_details_controller.dart';class HotelDetailCouponsDetailsScreen extends GetWidget<HotelDetailCouponsDetailsController> {const HotelDetailCouponsDetailsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(height: SizeUtils.height, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildBanner(), SizedBox(height: 27.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_terms_and_conditions".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), Container(width: 311.h, margin: EdgeInsets.only(left: 24.h, right: 39.h), child: Text("msg_pulvinar_sed_ipsum".tr, maxLines: 5, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall!.copyWith(height: 1.70))), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 308.h, margin: EdgeInsets.only(left: 32.h, right: 33.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_lorem_ipsum_dolor3".tr, style: CustomTextStyles.titleSmallff6b7280), TextSpan(text: "msg_nulla_mauris_habitasse".tr, style: CustomTextStyles.bodyMediumff6b7280.copyWith(height: 1.70))]), textAlign: TextAlign.left))), SizedBox(height: 11.v), Container(width: 299.h, margin: EdgeInsets.only(left: 24.h, right: 51.h), child: Text("msg_pulvinar_sed_ipsum2".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall!.copyWith(height: 1.70)))])), _buildBottomBar()])))); } 
/// Section Widget
Widget _buildBanner() { return Container(height: 273.v, width: double.maxFinite, decoration: AppDecoration.fillPrimary, child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(imagePath: ImageConstant.imgVector58x220, height: 112.v, alignment: Alignment.bottomLeft), CustomImageView(imagePath: ImageConstant.imgVector58x220, height: 66.v, alignment: Alignment.bottomLeft), Opacity(opacity: 0.2, child: CustomImageView(imagePath: ImageConstant.imgGroup, height: 22.v, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 119.v, right: 107.h))), Opacity(opacity: 0.2, child: CustomImageView(imagePath: ImageConstant.imgGroup, height: 22.v, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 120.h, top: 8.v))), Opacity(opacity: 0.2, child: CustomImageView(imagePath: ImageConstant.imgGroupLightBlueA20025x76, height: 67.v, alignment: Alignment.topRight)), CustomImageView(imagePath: ImageConstant.imgImg172x197, height: 172.v, alignment: Alignment.bottomRight), CustomImageView(imagePath: ImageConstant.imgVectorLightBlueA200, height: 22.v, alignment: Alignment.topLeft, margin: EdgeInsets.only(top: 49.v)), CustomImageView(imagePath: ImageConstant.imgVectorLightBlueA2001x4, height: 2.v, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 41.h, top: 54.v)), CustomImageView(imagePath: ImageConstant.imgVectorLightBlueA2001x1, width: 1.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(top: 62.v)), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 24.h, right: 196.h, bottom: 24.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 24.adaptSize, width: 24.adaptSize, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgVectorLightBlueA2001x1, height: 1.adaptSize, width: 1.adaptSize, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 8.h, top: 2.v)), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center, onTap: () {onTapImgArrowLeft();})])), SizedBox(height: 8.v), SizedBox(height: 31.v, width: 146.h, child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.bottomCenter, child: Text("msg_hotel_discount_coupon".tr, style: CustomTextStyles.titleSmallOnPrimaryContainer)), Opacity(opacity: 0.2, child: CustomImageView(imagePath: ImageConstant.imgGroup, height: 20.v, alignment: Alignment.topRight, margin: EdgeInsets.only(right: 37.h)))])), SizedBox(height: 14.v), SizedBox(height: 63.v, width: 155.h, child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: Text("lbl_50_off2".tr, style: theme.textTheme.displayMedium)), Align(alignment: Alignment.topLeft, child: Text("lbl_up_to2".tr, style: CustomTextStyles.labelLargeCyanA100_1)), Opacity(opacity: 0.2, child: CustomImageView(imagePath: ImageConstant.imgGroup, height: 14.v, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 7.v, right: 1.h)))])), SizedBox(height: 12.v), CustomElevatedButton(height: 32.v, width: 96.h, text: "lbl_holiday001".tr, buttonStyle: CustomButtonStyles.fillAmberTL8, buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainerBold)])))])); } 
/// Section Widget
Widget _buildBottomBar() { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), decoration: AppDecoration.outlineGrayF, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 12.v), CustomElevatedButton(text: "lbl_search_hotel".tr)]))); } 

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); } 
 }