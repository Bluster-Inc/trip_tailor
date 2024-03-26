import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';import 'package:trip_tailor/widgets/custom_search_view.dart';import 'package:trip_tailor/widgets/custom_floating_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/message_list_of_chat_controller.dart';class MessageListOfChatScreen extends GetWidget<MessageListOfChatController> {const MessageListOfChatScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 32.v), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 15.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomSearchView(controller: controller.searchController, hintText: "lbl_search".tr, hintStyle: CustomTextStyles.bodyLargeBluegray30001)), SizedBox(height: 29.v), Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_new_message".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 4.v), _buildChat(), _buildChat1(), SizedBox(height: 21.v), Text("lbl_all_message".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 5.v), _buildChat2(), _buildChat3(), _buildChat4(), _buildChat5()]))])), floatingActionButton: _buildFloatingActionButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_message".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDotsVerticalGray90024x24, margin: EdgeInsets.fromLTRB(24.h, 15.v, 24.h, 16.v))]); } 
/// Section Widget
Widget _buildChat() { return Container(padding: EdgeInsets.only(top: 18.v, bottom: 17.v), decoration: AppDecoration.outlineGray2005, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage48x48, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 12.v, width: 13.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), width: 3.h))))])), Padding(padding: EdgeInsets.only(top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_georgette_strobel".tr, style: theme.textTheme.titleMedium), SizedBox(height: 8.v), Text("msg_when_will_you_go".tr, style: CustomTextStyles.titleSmallGray900)])), Padding(padding: EdgeInsets.only(top: 4.v), child: Column(children: [Text("lbl_1m_ago".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), Align(alignment: Alignment.centerRight, child: Container(width: 20.adaptSize, padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_2".tr, style: CustomTextStyles.labelLargeOnPrimaryContainer)))]))])); } 
/// Section Widget
Widget _buildChat1() { return Container(padding: EdgeInsets.symmetric(vertical: 18.v), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(children: [SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage5, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 12.v, width: 13.h, decoration: BoxDecoration(color: appTheme.blueGray80001, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), width: 3.h))))])), Padding(padding: EdgeInsets.only(left: 12.h, top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_maryland_winkles".tr, style: theme.textTheme.titleMedium), SizedBox(height: 7.v), Text("msg_i_ve_been_waiting".tr, style: CustomTextStyles.titleSmallGray900)])), Spacer(), Padding(padding: EdgeInsets.only(top: 4.v), child: Column(children: [Text("lbl_3h_ago".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), Align(alignment: Alignment.centerRight, child: Container(width: 20.adaptSize, padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_2".tr, style: CustomTextStyles.labelLargeOnPrimaryContainer)))]))])); } 
/// Section Widget
Widget _buildChat2() { return Container(padding: EdgeInsets.only(top: 18.v, bottom: 17.v), decoration: AppDecoration.outlineGray2005, child: Row(children: [SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage6, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 12.v, width: 13.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), width: 3.h))))])), Padding(padding: EdgeInsets.only(left: 12.h), child: _buildText(florencioDorrance: "msg_chantal_shelburne".tr, augCounter: "lbl_yesterday".tr, body: "msg_yes_of_course".tr))])); } 
/// Section Widget
Widget _buildChat3() { return Container(padding: EdgeInsets.only(top: 18.v, bottom: 17.v), decoration: AppDecoration.outlineGray2005, child: Row(children: [SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage7, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 12.v, width: 13.h, decoration: BoxDecoration(color: appTheme.blueGray80001, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), width: 3.h))))])), Padding(padding: EdgeInsets.only(left: 12.h, top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_leif_floyd".tr, style: theme.textTheme.titleMedium), SizedBox(height: 6.v), Text("msg_yes_of_course2".tr, style: CustomTextStyles.titleSmallGray900)])), Spacer(), Padding(padding: EdgeInsets.only(top: 4.v), child: Column(children: [Text("lbl_aug_15".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), Align(alignment: Alignment.centerRight, child: Container(width: 20.adaptSize, padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Text("lbl_2".tr, style: CustomTextStyles.labelLargeOnPrimaryContainer)))]))])); } 
/// Section Widget
Widget _buildChat4() { return Container(padding: EdgeInsets.only(top: 18.v, bottom: 17.v), decoration: AppDecoration.outlineGray2005, child: Row(children: [SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage8, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 12.v, width: 13.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), width: 3.h))))])), Padding(padding: EdgeInsets.only(left: 12.h, top: 3.v), child: _buildText(florencioDorrance: "msg_cyndy_lillibridge".tr, augCounter: "lbl_aug_15".tr, body: "msg_yes_of_course".tr))])); } 
/// Section Widget
Widget _buildChat5() { return Container(padding: EdgeInsets.symmetric(vertical: 18.v), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(children: [SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage9, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: 12.v, width: 13.h, decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(6.h), border: Border.all(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), width: 3.h))))])), Padding(padding: EdgeInsets.only(left: 12.h, top: 3.v), child: _buildText(florencioDorrance: "lbl_benny_spanbauer".tr, augCounter: "lbl_aug_14".tr, body: "msg_yes_of_course".tr))])); } 
/// Section Widget
Widget _buildFloatingActionButton() { return CustomFloatingButton(height: 56, width: 56, backgroundColor: theme.colorScheme.primary, decoration: FloatingButtonStyleHelper.fillPrimary, child: CustomImageView(imagePath: ImageConstant.imgEdit, height: 28.0.v, width: 28.0.h)); } 
/// Common widget
Widget _buildText({required String florencioDorrance, required String augCounter, required String body, }) { return Expanded(child: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(florencioDorrance, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.gray900)), Text(augCounter, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray600))]), SizedBox(height: 6.v), Text(body, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.gray600))]))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }