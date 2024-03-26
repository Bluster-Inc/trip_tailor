import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_two.dart';import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';import 'package:trip_tailor/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/my_profile_controller.dart';import 'models/my_profile_model.dart';
// ignore_for_file: must_be_immutable
class MyProfilePage extends StatelessWidget {MyProfilePage({Key? key}) : super(key: key);

MyProfileController controller = Get.put(MyProfileController(MyProfileModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimaryContainer, child: Column(children: [_buildArrowLeft(), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), child: Column(children: [_buildItem(lock: ImageConstant.imgThumbsUpBlueGray3000120x20, title: "lbl_payment_methods".tr), _buildItem(lock: ImageConstant.imgNavProfile, title: "msg_save_passenger_data".tr), _buildItem(lock: ImageConstant.imgTelevision1, title: "lbl_referral".tr), _buildItem(lock: ImageConstant.imgNavBooking, title: "lbl_refund_list".tr), _buildItem(lock: ImageConstant.imgMegaphone, title: "lbl_my_review".tr), _buildItem(lock: ImageConstant.imgCloseBlueGray3000120x20, title: "lbl_loyalty_program".tr), SizedBox(height: 18.v), _buildItem(lock: ImageConstant.imgProfileBlueGray30001, title: "lbl_help_center".tr), SizedBox(height: 10.v)]))])))); } 
/// Section Widget
Widget _buildArrowLeft() { return SizedBox(height: 332.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomAppBar(height: 277.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 64.v, bottom: 189.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_profile".tr, margin: EdgeInsets.only(top: 66.v, bottom: 190.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgSettingsOnprimarycontainer24x24, margin: EdgeInsets.fromLTRB(24.h, 64.v, 24.h, 189.v))], styleType: Style.bgFill), Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v), decoration: AppDecoration.outlineBluegray7001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage11, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h)), Padding(padding: EdgeInsets.only(left: 16.h, top: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_francene_vandyne".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 8.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgMapPin, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_hawaii".tr, style: theme.textTheme.labelLarge))])])), Spacer(), CustomImageView(imagePath: ImageConstant.imgEditBlueGray30001, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 14.v))]), SizedBox(height: 23.v), Container(padding: EdgeInsets.symmetric(vertical: 11.v), decoration: AppDecoration.outlineGray200.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Column(children: [CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(9.h), decoration: IconButtonStyleHelper.fillLightBlue, child: CustomImageView(imagePath: ImageConstant.imgLockPrimary)), SizedBox(height: 11.v), Text("lbl_message".tr, style: theme.textTheme.labelMedium)]), Column(children: [CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(9.h), decoration: IconButtonStyleHelper.fillLightBlue, child: CustomImageView(imagePath: ImageConstant.imgClosePrimary)), SizedBox(height: 11.v), Text("lbl_my_coupon".tr, style: theme.textTheme.labelMedium)]), Column(children: [CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(9.h), decoration: IconButtonStyleHelper.fillLightBlue, child: CustomImageView(imagePath: ImageConstant.imgTablerAssembly)), SizedBox(height: 11.v), Text("lbl_my_points".tr, style: theme.textTheme.labelMedium)])]))])))])); } 
/// Common widget
Widget _buildItem({required String lock, required String title, }) { return Container(padding: EdgeInsets.only(top: 18.v, bottom: 17.v), decoration: AppDecoration.outlineGray2001, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: lock, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 3.v), child: Text(title, style: CustomTextStyles.titleSmallGray900_2.copyWith(color: appTheme.gray900))), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 20.adaptSize, width: 20.adaptSize)])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }