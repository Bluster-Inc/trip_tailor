import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_title_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:dotted_border/dotted_border.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/attaraction_payment_controller.dart';class AttaractionPaymentScreen extends GetWidget<AttaractionPaymentController> {const AttaractionPaymentScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(height: SizeUtils.height, width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 42.v), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAppBar(), SizedBox(height: 26.v), _buildCount(), SizedBox(height: 24.v), _buildCardBooking(), SizedBox(height: 28.v), Text("msg_important_information".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 8.v), Container(width: 309.h, margin: EdgeInsets.only(right: 17.h), child: Text("msg_you_will_be_redirected".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.70))), SizedBox(height: 20.v), _buildPrice()]))), _buildBottomBar()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 25.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, bottom: 1.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgLogosPaypal, margin: EdgeInsets.only(bottom: 3.v)), AppbarSubtitle(text: "lbl_paypal".tr, margin: EdgeInsets.only(left: 12.h, top: 1.v))])); } 
/// Section Widget
Widget _buildCount() { return Container(padding: EdgeInsets.all(12.h), decoration: AppDecoration.fillLightBlue.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text("msg_complete_your_payment".tr, style: CustomTextStyles.labelLargeGray900_1)), Spacer(), CustomElevatedButton(height: 22.v, width: 22.h, text: "lbl_01".tr, buttonStyle: CustomButtonStyles.fillOnPrimaryContainer, buttonTextStyle: CustomTextStyles.labelMediumPrimary), CustomImageView(imagePath: ImageConstant.imgTitle, width: 2.h, margin: EdgeInsets.only(left: 6.h, top: 7.v, bottom: 7.v)), Container(width: 22.adaptSize, margin: EdgeInsets.only(left: 6.h), padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 4.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_452".tr, style: CustomTextStyles.labelMediumPrimary)), CustomImageView(imagePath: ImageConstant.imgTitle, width: 2.h, margin: EdgeInsets.only(left: 6.h, top: 7.v, bottom: 7.v)), Container(width: 22.adaptSize, margin: EdgeInsets.only(left: 6.h), padding: EdgeInsets.all(4.h), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_00".tr, style: CustomTextStyles.labelMediumPrimary))])); } 
/// Section Widget
Widget _buildCardBooking() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v), decoration: AppDecoration.outlineBluegray7001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(right: 31.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImg42, height: 64.v, radius: BorderRadius.circular(8.h)), Padding(padding: EdgeInsets.only(left: 16.h, top: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_disneyland_park".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 7.v), Text("msg_2_day_1_park_disneyland".tr, style: theme.textTheme.labelLarge), SizedBox(height: 7.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_1_adults".tr, style: theme.textTheme.labelMedium)), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(left: 6.h, top: 3.v, bottom: 5.v), decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_2_day3".tr, style: theme.textTheme.labelMedium))])]))])), SizedBox(height: 16.v), Divider(), SizedBox(height: 17.v), Padding(padding: EdgeInsets.only(right: 44.h), child: Row(children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_date".tr, style: theme.textTheme.labelLarge), SizedBox(height: 8.v), Text("lbl_sep_18_2022".tr, style: CustomTextStyles.labelLargeGray900)]), Padding(padding: EdgeInsets.only(left: 29.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_location".tr, style: theme.textTheme.labelLarge), SizedBox(height: 6.v), Text("lbl_california".tr, style: CustomTextStyles.labelLargeGray900)])), Spacer(), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_ticket".tr, style: theme.textTheme.labelLarge), SizedBox(height: 7.v), Text("lbl_1_ticket".tr, style: CustomTextStyles.labelLargeGray900)])])), SizedBox(height: 17.v), Divider(), SizedBox(height: 17.v), Padding(padding: EdgeInsets.only(right: 31.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowRightGray600, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("msg_refund_not_allowed2".tr, style: theme.textTheme.labelLarge)), Container(width: 114.h, margin: EdgeInsets.only(left: 16.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgAlertCirclePrimary, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("msg_reservation_info".tr, style: CustomTextStyles.labelLargePrimary))]))]))])); } 
/// Section Widget
Widget _buildPrice() { return Container(padding: EdgeInsets.all(19.h), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [DottedBorder(color: appTheme.blueGray100, padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v), strokeWidth: 1.h, dashPattern: [4, 4], child: Container(padding: EdgeInsets.only(top: 2.v, bottom: 1.v), decoration: AppDecoration.outlineBluegray1004, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_price".tr, style: CustomTextStyles.labelLargeGray900), SizedBox(height: 8.v), _buildItem(title: "lbl_1_adult".tr, title1: "lbl_255_00".tr), SizedBox(height: 16.v), _buildItem(title: "lbl_selected_date".tr, title1: "lbl_sep_18_2022".tr), SizedBox(height: 17.v), _buildItem(title: "lbl_day2".tr, title1: "lbl_2_day3".tr), SizedBox(height: 14.v)]))), SizedBox(height: 19.v), _buildItem(title: "lbl_total_price".tr, title1: "lbl_255_00".tr)])); } 
/// Section Widget
Widget _buildBottomBar() { return Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h), decoration: AppDecoration.outlineGrayF, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 12.v), CustomElevatedButton(text: "lbl_pay_with_paypal".tr)]))); } 
/// Common widget
Widget _buildItem({required String title, required String title1, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text(title, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray600))), Text(title1, style: CustomTextStyles.labelLargeGray900.copyWith(color: appTheme.gray900))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }