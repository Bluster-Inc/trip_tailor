import 'package:trip_tailor/widgets/custom_icon_button.dart';import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/notification_controller.dart';class NotificationScreen extends GetWidget<NotificationController> {const NotificationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 12.v), child: Column(children: [_buildNotification(makeAPayment: "msg_more_people_on_board".tr, augCounter: "lbl_aug_26".tr, time: "msg_invite_your_friends".tr), _buildNotification(makeAPayment: "lbl_make_a_payment".tr, augCounter: "lbl_aug_26".tr, time: "msg_hello_francene_vandyne".tr), SizedBox(height: 12.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildNotification1(congratulations: "msg_congratulations".tr, augCounter: "lbl_aug_23".tr, title: "msg_you_get_2_000_points".tr)), SizedBox(height: 21.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildNotification1(congratulations: "msg_congratulations".tr, augCounter: "lbl_aug_22".tr, title: "msg_you_get_4_000_points".tr)), SizedBox(height: 9.v), _buildNotification(makeAPayment: "lbl_make_a_payment".tr, augCounter: "lbl_aug_12".tr, time: "msg_hello_francene_vandyne".tr), SizedBox(height: 12.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildNotification1(congratulations: "lbl_make_a_payment".tr, augCounter: "lbl_aug_10".tr, title: "msg_hello_francene_vandyne".tr)), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_notification".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgShareGray900, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v))]); } 
/// Common widget
Widget _buildNotification({required String makeAPayment, required String augCounter, required String time, }) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 9.v), decoration: AppDecoration.fillGray10001, child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 2.v, bottom: 30.v), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(10.h), decoration: IconButtonStyleHelper.fillPrimaryTL8, child: CustomImageView(imagePath: ImageConstant.imgUserOnprimarycontainer40x40))), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h, top: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(makeAPayment, style: CustomTextStyles.titleSmallGray900.copyWith(color: appTheme.gray900)), Text(augCounter, style: CustomTextStyles.titleSmallGray900_2.copyWith(color: appTheme.gray900))]), SizedBox(height: 7.v), Container(width: 241.h, margin: EdgeInsets.only(right: 29.h), child: Text(time, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLargeGray900_1.copyWith(color: appTheme.gray900, height: 1.70)))])))])); } 
/// Common widget
Widget _buildNotification1({required String congratulations, required String augCounter, required String title, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 30.v), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(10.h), decoration: IconButtonStyleHelper.fillAmber, child: CustomImageView(imagePath: ImageConstant.imgClockOnprimarycontainer))), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h, top: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(congratulations, style: CustomTextStyles.titleSmallGray900_2.copyWith(color: appTheme.gray900)), Text(augCounter, style: CustomTextStyles.titleSmallBluegray30001.copyWith(color: appTheme.blueGray30001))]), SizedBox(height: 7.v), Container(width: 247.h, margin: EdgeInsets.only(right: 23.h), child: Text(title, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray600, height: 1.70)))])))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
