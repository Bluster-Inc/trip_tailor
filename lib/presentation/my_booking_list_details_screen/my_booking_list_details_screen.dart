import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_five.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_eleven.dart';import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:trip_tailor/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/my_booking_list_details_controller.dart';class MyBookingListDetailsScreen extends GetWidget<MyBookingListDetailsController> {const MyBookingListDetailsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 432.v, width: 327.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.all(20.h), decoration: AppDecoration.outlineBluegray7002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 90.v), Divider(), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 56.h), child: Row(children: [Container(height: 64.v, width: 65.h, decoration: AppDecoration.gradientGrayToGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgImg64x65, height: 64.v, alignment: Alignment.center)), Padding(padding: EdgeInsets.only(left: 16.h, top: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_mariposa_los_angeles".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 7.v), Text("msg_premium_room_1".tr, style: theme.textTheme.labelLarge), SizedBox(height: 8.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_2_night".tr, style: theme.textTheme.labelMedium)), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(left: 6.h, top: 3.v, bottom: 5.v), decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_2_guest".tr, style: theme.textTheme.labelMedium))])]))])), SizedBox(height: 16.v), Divider(), SizedBox(height: 17.v), _buildText(label: "lbl_purchase_on".tr, price: "msg_tue_26_aug_2022".tr), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_payment_method".tr, style: theme.textTheme.labelLarge)), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLogosPaypal, width: 14.h), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_paypal".tr, style: CustomTextStyles.labelLargeGray900_1))])]), SizedBox(height: 15.v), _buildText(label: "lbl_total_price".tr, price: "lbl_180_89".tr), SizedBox(height: 17.v), Divider(), SizedBox(height: 15.v), CustomElevatedButton(height: 48.v, text: "lbl_send_receipt".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL12, buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer)]))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 85.h), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomIconButton(height: 56.adaptSize, width: 56.adaptSize, padding: EdgeInsets.all(12.h), decoration: IconButtonStyleHelper.fillBlueGrayTL28, child: CustomImageView(imagePath: ImageConstant.imgArrowLeft)), SizedBox(height: 15.v), Text("msg_purchase_successfull2".tr, style: theme.textTheme.titleMedium), SizedBox(height: 10.v), Text("msg_booking_id_01298765".tr, style: theme.textTheme.labelLarge)])))])), SizedBox(height: 29.v), Text("lbl_need_a_help".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), _buildCard(), SizedBox(height: 4.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: Column(children: [AppbarSubtitleFive(text: "msg_mariposa_los_angeles".tr), SizedBox(height: 5.v), AppbarSubtitleEleven(text: "msg_checkin_on_tue".tr, margin: EdgeInsets.only(left: 5.h, right: 6.h))]), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDotsVerticalGray900, margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 17.v))]); } 
/// Section Widget
Widget _buildCard() { return Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v), decoration: AppDecoration.outlineBluegray1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(children: [Padding(padding: EdgeInsets.symmetric(vertical: 1.v), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(10.h), decoration: IconButtonStyleHelper.fillGrayTL81, child: CustomImageView(imagePath: ImageConstant.imgProfileGray900))), Padding(padding: EdgeInsets.only(left: 12.h, top: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_visit_help_center".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 9.v), Text("msg_quickest_answer".tr, style: theme.textTheme.labelMedium)])), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 11.v))])); } 
/// Common widget
Widget _buildText({required String label, required String price, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(label, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray600))), Text(price, style: CustomTextStyles.labelLargeGray900_1.copyWith(color: appTheme.gray900))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
