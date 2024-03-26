import 'package:trip_tailor/widgets/custom_icon_button.dart';import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/flight_payment_select_payment_controller.dart';class FlightPaymentSelectPaymentScreen extends GetWidget<FlightPaymentSelectPaymentController> {const FlightPaymentSelectPaymentScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 22.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 23.h), child: Text("msg_debit_credit_card".tr, style: CustomTextStyles.titleMediumGray90001))), SizedBox(height: 18.v), _buildPayment1(), SizedBox(height: 27.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 23.h), child: Text("lbl_virtual_account".tr, style: CustomTextStyles.titleMediumGray90001))), SizedBox(height: 18.v), Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: _buildPayment(title: "lbl_bank_of_america".tr, title1: "msg_easier_payment_method".tr)), SizedBox(height: 15.v), Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: _buildPayment(title: "lbl_citibank".tr, title1: "msg_easier_payment_method".tr)), SizedBox(height: 15.v), Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: _buildPayment(title: "lbl_barclays".tr, title1: "msg_easier_payment_method".tr)), SizedBox(height: 27.v), _buildTitle()]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCloseGray900, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapClose();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_payment_method2".tr)); } 
/// Section Widget
Widget _buildPayment1() { return Container(margin: EdgeInsets.symmetric(horizontal: 23.h), padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineBluegray1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(12.h), decoration: IconButtonStyleHelper.fillGrayTL12, child: CustomImageView(imagePath: ImageConstant.imgTelevisionPrimary48x48)), Padding(padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_mastercard_visa".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 9.v), Text("lbl_add_new_card".tr, style: theme.textTheme.labelLarge)])), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 14.v))])); } 
/// Section Widget
Widget _buildTitle() { return SizedBox(height: 310.v, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_e_wallet".tr, style: CustomTextStyles.titleMediumGray90001), SizedBox(height: 18.v), _buildPayment(title: "lbl_paypal".tr, title1: "msg_easier_payment_method".tr), SizedBox(height: 15.v), _buildPayment(title: "lbl_apple_pay".tr, title1: "msg_easier_payment_method".tr), SizedBox(height: 15.v), Container(padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineBluegray1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(children: [CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(12.h), decoration: IconButtonStyleHelper.fillGrayTL12, child: CustomImageView(imagePath: ImageConstant.imgGoogle)), Padding(padding: EdgeInsets.only(left: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_google_pay".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 4.v), Text("msg_easier_payment_method".tr, style: theme.textTheme.labelLarge)])), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 14.v))]))]))), Align(alignment: Alignment.center, child: Container(height: 98.v, width: double.maxFinite, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 1.11), end: Alignment(0.5, 0.08), colors: [theme.colorScheme.onPrimaryContainer.withOpacity(1), theme.colorScheme.onPrimaryContainer.withOpacity(0)]))))])); } 
/// Common widget
Widget _buildPayment({required String title, required String title1, }) { return Container(padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineBluegray1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.fillGrayTL12, child: CustomImageView(imagePath: ImageConstant.imgSettingsLightBlue900)), Padding(padding: EdgeInsets.only(left: 16.h, top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: CustomTextStyles.titleSmallGray900.copyWith(color: appTheme.gray900)), SizedBox(height: 11.v), Text(title1, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray600))])), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 14.v))])); } 

/// Navigates to the previous screen.
onTapClose() { Get.back(); } 
 }
