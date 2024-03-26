import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/enable_fingerprint_controller.dart';class EnableFingerprintScreen extends GetWidget<EnableFingerprintController> {const EnableFingerprintScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.only(top: 80.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgIllustration, height: 120.adaptSize, width: 120.adaptSize, radius: BorderRadius.circular(60.h)), SizedBox(height: 35.v), Text("msg_enable_fingerprint".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 9.v), SizedBox(width: 233.h, child: Text("msg_enable_your_fingerprint".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumGray600Medium.copyWith(height: 1.65))), SizedBox(height: 5.v)])), bottomNavigationBar: _buildEnableFingerprint())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(33.h, 22.v, 336.h, 22.v), onTap: () {onTapVector();})); } 
/// Section Widget
Widget _buildEnableFingerprint() { return CustomElevatedButton(text: "msg_enable_fingerprint2".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 42.v)); } 

/// Navigates to the previous screen.
onTapVector() { Get.back(); } 
 }
