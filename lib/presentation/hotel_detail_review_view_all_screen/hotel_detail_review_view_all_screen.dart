import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';import 'widgets/krishnabarbe_item_widget.dart';import 'models/krishnabarbe_item_model.dart';import 'package:trip_tailor/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/hotel_detail_review_view_all_controller.dart';class HotelDetailReviewViewAllScreen extends GetWidget<HotelDetailReviewViewAllController> {const HotelDetailReviewViewAllScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 14.v), child: SizedBox(height: 814.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgStarGray900, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v)), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_4_8".tr, style: theme.textTheme.titleLarge)), Container(height: 6.adaptSize, width: 6.adaptSize, margin: EdgeInsets.only(left: 8.h, top: 9.v, bottom: 9.v), decoration: BoxDecoration(color: appTheme.gray900, borderRadius: BorderRadius.circular(3.h))), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_1_245_review".tr, style: theme.textTheme.titleLarge))]), SizedBox(height: 24.v), _buildItem(), SizedBox(height: 22.v), _buildItem1(), SizedBox(height: 23.v), _buildItem2(), SizedBox(height: 21.v), _buildItem3(), SizedBox(height: 22.v), _buildItem4(), SizedBox(height: 27.v), _buildKrishnaBarbe()]))), _buildBottomBar()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewindGray900, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v))]); } 
/// Section Widget
Widget _buildItem() { return Row(children: [Text("lbl_excellent2".tr, style: theme.textTheme.titleSmall), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 5.v), child: Container(height: 6.v, width: 142.h, decoration: BoxDecoration(color: appTheme.lightBlue50, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.85, backgroundColor: appTheme.lightBlue50, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary))))), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_500".tr, style: theme.textTheme.titleSmall))]); } 
/// Section Widget
Widget _buildItem1() { return Row(children: [Text("lbl_good2".tr, style: theme.textTheme.titleSmall), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 5.v), child: Container(height: 6.v, width: 142.h, decoration: BoxDecoration(color: appTheme.lightBlue50, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.59, backgroundColor: appTheme.lightBlue50, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary))))), Padding(padding: EdgeInsets.only(left: 13.h), child: Text("lbl_2402".tr, style: theme.textTheme.titleSmall))]); } 
/// Section Widget
Widget _buildItem2() { return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_okay".tr, style: theme.textTheme.titleSmall), Spacer(), Padding(padding: EdgeInsets.only(top: 5.v, bottom: 7.v), child: Container(height: 6.v, width: 142.h, decoration: BoxDecoration(color: appTheme.lightBlue50, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.75, backgroundColor: appTheme.lightBlue50, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary))))), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_1502".tr, style: theme.textTheme.titleSmall))]); } 
/// Section Widget
Widget _buildItem3() { return Row(children: [Text("lbl_poor".tr, style: theme.textTheme.titleSmall), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 5.v), child: Container(height: 6.v, width: 142.h, decoration: BoxDecoration(color: appTheme.lightBlue50, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.46, backgroundColor: appTheme.lightBlue50, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary))))), Padding(padding: EdgeInsets.only(left: 21.h), child: Text("lbl_40".tr, style: theme.textTheme.titleSmall))]); } 
/// Section Widget
Widget _buildItem4() { return Row(children: [Text("lbl_terible".tr, style: theme.textTheme.titleSmall), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 5.v), child: Container(height: 6.v, width: 142.h, decoration: BoxDecoration(color: appTheme.lightBlue50, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.28, backgroundColor: appTheme.lightBlue50, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary))))), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_10".tr, style: theme.textTheme.titleSmall))]); } 
/// Section Widget
Widget _buildKrishnaBarbe() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.hotelDetailReviewViewAllModelObj.value.krishnabarbeItemList.value.length, itemBuilder: (context, index) {KrishnabarbeItemModel model = controller.hotelDetailReviewViewAllModelObj.value.krishnabarbeItemList.value[index]; return KrishnabarbeItemWidget(model);})); } 
/// Section Widget
Widget _buildBottomBar() { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(bottom: 162.v), padding: EdgeInsets.symmetric(horizontal: 24.h), decoration: AppDecoration.outlineGrayF, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 12.v), CustomOutlinedButton(text: "lbl_write_a_review".tr, buttonStyle: CustomButtonStyles.outlineGray, buttonTextStyle: CustomTextStyles.titleMediumGray90001)]))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }