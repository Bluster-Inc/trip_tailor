import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_one.dart';import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:trip_tailor/widgets/custom_icon_button.dart';import 'widgets/freeprotections_item_widget.dart';import 'models/freeprotections_item_model.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/flight_booking_controller.dart';class FlightBookingScreen extends GetWidget<FlightBookingController> {const FlightBookingScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildSIN(), SizedBox(height: 27.v), Expanded(child: SingleChildScrollView(child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_contact_details".tr, style: theme.textTheme.titleMedium))), SizedBox(height: 14.v), _buildContact(), SizedBox(height: 27.v), _buildContinue(), SizedBox(height: 24.v), Text("msg_extra_protections".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), _buildFreeprotections(), SizedBox(height: 24.v), _buildGuarantee()])))])))); } 
/// Section Widget
Widget _buildSIN() { return SizedBox(height: 360.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomAppBar(height: 276.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 64.v, bottom: 188.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleOne(text: "lbl_booking".tr, margin: EdgeInsets.only(top: 67.v, bottom: 186.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDotsVerticalOnprimarycontainer, margin: EdgeInsets.fromLTRB(24.h, 64.v, 24.h, 188.v))], styleType: Style.bgFill), Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(16.h), decoration: AppDecoration.outlineBluegray7001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgQatarAirwaysSvg, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h, top: 3.v), child: Text("lbl_qatar_airways".tr, style: CustomTextStyles.labelLargeGray900_1))]), SizedBox(height: 15.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_11_05_pm".tr, style: CustomTextStyles.titleSmallGray900_2), SizedBox(height: 7.v), CustomElevatedButton(height: 22.v, width: 42.h, text: "lbl_sin".tr, buttonStyle: CustomButtonStyles.fillGrayTL6, buttonTextStyle: CustomTextStyles.labelMediumPlusJakartaSans)]), CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray100, height: 6.v, margin: EdgeInsets.only(left: 26.h, top: 18.v, bottom: 22.v)), CustomImageView(imagePath: ImageConstant.imgAirplaneBlueGray30001, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 4.h, top: 9.v, bottom: 13.v)), CustomImageView(imagePath: ImageConstant.imgBarcode, height: 6.v, margin: EdgeInsets.only(left: 4.h, top: 18.v, bottom: 22.v)), Padding(padding: EdgeInsets.only(left: 21.h), child: Column(children: [Text("lbl_10_30_am".tr, style: CustomTextStyles.titleSmallGray900_2), SizedBox(height: 7.v), CustomElevatedButton(height: 22.v, width: 44.h, text: "lbl_lhr".tr, buttonStyle: CustomButtonStyles.fillGrayTL6, buttonTextStyle: CustomTextStyles.labelMediumPlusJakartaSans, alignment: Alignment.centerRight)]))]), SizedBox(height: 16.v), Divider(), SizedBox(height: 17.v), Padding(padding: EdgeInsets.only(right: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_class".tr, style: theme.textTheme.labelLarge), SizedBox(height: 8.v), Text("lbl_economy_light".tr, style: CustomTextStyles.labelLargeGray900)]), Padding(padding: EdgeInsets.only(top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_trip".tr, style: theme.textTheme.labelLarge), SizedBox(height: 6.v), Text("lbl_one_way".tr, style: CustomTextStyles.labelLargeGray900)])), Padding(padding: EdgeInsets.only(top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_passenger".tr, style: theme.textTheme.labelLarge), SizedBox(height: 5.v), Text("lbl_1_adult".tr, style: CustomTextStyles.labelLargeGray900)]))])), SizedBox(height: 17.v), Divider(), SizedBox(height: 17.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgCheckBlueGray80001, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_refund".tr, style: CustomTextStyles.labelLargeBluegray80001)), CustomImageView(imagePath: ImageConstant.imgCheckBlueGray80001, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 24.h)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_reschedule".tr, style: CustomTextStyles.labelLargeBluegray80001))])])))])); } 
/// Section Widget
Widget _buildContact() { return Container(margin: EdgeInsets.symmetric(horizontal: 23.h), padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 17.v), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.end, children: [SingleChildScrollView(scrollDirection: Axis.horizontal, child: IntrinsicWidth(child: SizedBox(width: 303.h, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgNavProfile, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h, top: 3.v), child: Text("msg_francene_vandyne".tr, style: CustomTextStyles.titleSmallGray900)), Spacer(), CustomImageView(imagePath: ImageConstant.imgCheckPrimary, height: 16.adaptSize, width: 16.adaptSize)])))), SizedBox(height: 14.v), Divider()]), CustomImageView(imagePath: ImageConstant.imgCheckPrimary, height: 16.adaptSize, width: 16.adaptSize)]), SizedBox(height: 14.v), Divider(), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(right: 51.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("msg_francenevandyne_mail_com".tr, style: theme.textTheme.labelLarge)), Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 6.v), decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_189765000".tr, style: theme.textTheme.labelLarge))]))])); } 
/// Section Widget
Widget _buildContinue() { return SizedBox(height: 354.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_travel_add_ons".tr, style: theme.textTheme.titleMedium), SizedBox(height: 14.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 28.v), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(10.h), child: CustomImageView(imagePath: ImageConstant.imgBag))), Padding(padding: EdgeInsets.only(left: 12.h, top: 8.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_baggage".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 5.v), SizedBox(width: 189.h, child: Text("msg_adding_baggage_here".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.70)))])), Padding(padding: EdgeInsets.only(left: 29.h, top: 27.v, bottom: 28.v), child: Text("lbl_add".tr, style: CustomTextStyles.labelLargePrimaryBold))])), SizedBox(height: 15.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 26.v), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(10.h), child: CustomImageView(imagePath: ImageConstant.imgUserBlueGray30001))), Padding(padding: EdgeInsets.only(left: 12.h, top: 6.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_seat".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 5.v), SizedBox(width: 123.h, child: Text("msg_choose_the_right".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.70)))])), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 26.v), child: Text("lbl_add".tr, style: CustomTextStyles.labelLargePrimaryBold))])), SizedBox(height: 15.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(children: [Padding(padding: EdgeInsets.only(bottom: 26.v), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(10.h), child: CustomImageView(imagePath: ImageConstant.imgMdiVirusOutline))), Padding(padding: EdgeInsets.only(left: 12.h), child: Column(children: [SizedBox(width: 175.h, child: Text("lbl_covid_19_test".tr, maxLines: null, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallGray900.copyWith(height: 1.70))), SizedBox(height: 2.v), SizedBox(width: 175.h, child: Text("msg_buy_a_covid_19_test".tr, maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.70)))])), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 23.v), child: Text("lbl_add".tr, textAlign: TextAlign.right, style: CustomTextStyles.labelLargePrimaryBold))]))]))), Align(alignment: Alignment.bottomCenter, child: Container(width: double.maxFinite, margin: EdgeInsets.only(top: 156.v, bottom: 130.v), padding: EdgeInsets.symmetric(horizontal: 24.h), decoration: AppDecoration.outlineGrayF, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 17.v, bottom: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Text("lbl_744_00".tr, style: theme.textTheme.titleLarge), CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 4.v))]), SizedBox(height: 7.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_get".tr, style: CustomTextStyles.labelLargeff6b7280), TextSpan(text: "lbl_10_000_points".tr, style: CustomTextStyles.labelLargee816d4e9)]), textAlign: TextAlign.left)])), CustomElevatedButton(width: 159.h, text: "lbl_continue".tr, margin: EdgeInsets.only(top: 12.v))])))])); } 
/// Section Widget
Widget _buildFreeprotections() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.flightBookingModelObj.value.freeprotectionsItemList.value.length, itemBuilder: (context, index) {FreeprotectionsItemModel model = controller.flightBookingModelObj.value.freeprotectionsItemList.value[index]; return FreeprotectionsItemWidget(model);}))); } 
/// Section Widget
Widget _buildGuarantee() { return Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(12.h), decoration: AppDecoration.fillGray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(12.h), decoration: IconButtonStyleHelper.fillOnPrimaryContainer, child: CustomImageView(imagePath: ImageConstant.imgCloseBlueGray80001))), Expanded(child: Padding(padding: EdgeInsets.only(left: 12.h), child: Column(children: [Text("msg_lowest_price_guarentee".tr, style: CustomTextStyles.labelLargeGray900), SizedBox(width: 243.h, child: Text("msg_get_compensated".tr, maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelMedium!.copyWith(height: 1.60)))])))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
