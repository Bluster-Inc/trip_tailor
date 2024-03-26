import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';import 'package:trip_tailor/widgets/custom_search_view.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/message_search_controller.dart';class MessageSearchScreen extends GetWidget<MessageSearchController> {const MessageSearchScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v), child: Column(children: [CustomSearchView(controller: controller.searchController, hintText: "lbl_vacation".tr, contentPadding: EdgeInsets.symmetric(vertical: 18.v)), SizedBox(height: 8.v), _buildChat(), SizedBox(height: 5.v), _buildChat1()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_message".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDotsVerticalGray90024x24, margin: EdgeInsets.fromLTRB(24.h, 15.v, 24.h, 16.v))]); } 
/// Section Widget
Widget _buildChat() { return Container(padding: EdgeInsets.only(top: 18.v, bottom: 17.v), decoration: AppDecoration.outlineGray2005, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage48x48, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 12.v, width: 13.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), width: 3.h))))])), Padding(padding: EdgeInsets.only(top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_georgette_strobel".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), Text("msg_when_will_you_go".tr, style: CustomTextStyles.titleSmallGray900)])), Padding(padding: EdgeInsets.only(top: 4.v), child: Column(children: [Text("lbl_1m_ago".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), Align(alignment: Alignment.centerRight, child: Container(width: 20.adaptSize, padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_2".tr, style: CustomTextStyles.labelLargeOnPrimaryContainer)))]))])); } 
/// Section Widget
Widget _buildChat1() { return Container(padding: EdgeInsets.symmetric(vertical: 18.v), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage5, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 12.v, width: 13.h, decoration: BoxDecoration(color: appTheme.blueGray80001, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), width: 3.h))))])), Padding(padding: EdgeInsets.only(left: 12.h, top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_maryland_winkles".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), Text("msg_already_vacation".tr, style: CustomTextStyles.titleSmallGray900)])), Spacer(), Padding(padding: EdgeInsets.only(top: 4.v), child: Column(children: [Text("lbl_3h_ago".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), Align(alignment: Alignment.centerRight, child: Container(width: 20.adaptSize, padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_2".tr, style: CustomTextStyles.labelLargeOnPrimaryContainer)))]))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
