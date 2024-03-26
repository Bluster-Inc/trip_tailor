import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/custom_pin_code_text_field.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/enter_verification_code_controller.dart';class EnterVerificationCodeScreen extends GetWidget<EnterVerificationCodeController> {const EnterVerificationCodeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_verify_account".tr, style: CustomTextStyles.headlineLargeGray900), SizedBox(height: 14.v), Container(width: 276.h, margin: EdgeInsets.only(right: 50.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_please_enter_the2".tr, style: CustomTextStyles.bodyLargeff6b7280), TextSpan(text: "lbl_785".tr, style: CustomTextStyles.titleMediumff111827_1)]), textAlign: TextAlign.left)), SizedBox(height: 15.v), Obx(() => CustomPinCodeTextField(context: Get.context!, controller: controller.otpController.value, onChanged: (value) {})), SizedBox(height: 27.v), Text("lbl_resend_code".tr, style: CustomTextStyles.titleMediumBlue700), SizedBox(height: 85.v), CustomElevatedButton(text: "lbl_verify_account".tr), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(33.h, 22.v, 336.h, 22.v), onTap: () {onTapVector();})); } 

/// Navigates to the previous screen.
onTapVector() { Get.back(); } 
 }