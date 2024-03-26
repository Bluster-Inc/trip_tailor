import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/core/utils/validation_functions.dart';import 'package:trip_tailor/widgets/custom_text_form_field.dart';import 'package:trip_tailor/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/login_filled_state_controller.dart';
// ignore_for_file: must_be_immutable
class LoginFilledStateScreen extends GetWidget<LoginFilledStateController> {LoginFilledStateScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_welcome_back".tr, style: CustomTextStyles.headlineLargeGray900), SizedBox(height: 24.v), _buildEmail(), SizedBox(height: 16.v), _buildInput(), SizedBox(height: 21.v), Text("msg_forgot_password".tr, style: CustomTextStyles.titleMediumMedium), SizedBox(height: 25.v), _buildButton(), SizedBox(height: 27.v), _buildOr(), SizedBox(height: 27.v), _buildContinueWithApple(), SizedBox(height: 16.v), _buildContinueWithGoogle(), SizedBox(height: 16.v), _buildContinueWithFacebook(), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.fromLTRB(33.h, 22.v, 336.h, 22.v), onTap: () {onTapVector();})); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "msg_francenevandyne_mail_com".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.outlineBlueGray); } 
/// Section Widget
Widget _buildInput() { return Obx(() => CustomTextFormField(controller: controller.inputController, textInputAction: TextInputAction.done, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgEyeoff, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 56.v), obscureText: controller.isShowPassword.value, borderDecoration: TextFormFieldStyleHelper.outlineBlueGray)); } 
/// Section Widget
Widget _buildButton() { return Container(padding: EdgeInsets.symmetric(horizontal: 151.h, vertical: 16.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: 24.adaptSize, width: 24.adaptSize, decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(12.h)))); } 
/// Section Widget
Widget _buildOr() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 7.v), child: SizedBox(width: 139.h, child: Divider(color: appTheme.blueGray50))), Text("lbl_or".tr, style: theme.textTheme.bodyMedium), Padding(padding: EdgeInsets.only(top: 8.v, bottom: 7.v), child: SizedBox(width: 139.h, child: Divider(color: appTheme.blueGray50)))]); } 
/// Section Widget
Widget _buildContinueWithApple() { return CustomOutlinedButton(text: "msg_continue_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgAntdesignapplefilled, height: 24.adaptSize, width: 24.adaptSize))); } 
/// Section Widget
Widget _buildContinueWithGoogle() { return CustomOutlinedButton(text: "msg_continue_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgFlatcoloriconsgoogle, height: 22.adaptSize, width: 22.adaptSize))); } 
/// Section Widget
Widget _buildContinueWithFacebook() { return CustomOutlinedButton(text: "msg_continue_with_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 30.h), child: CustomImageView(imagePath: ImageConstant.imgLogosfacebook, height: 22.adaptSize, width: 22.adaptSize))); } 

/// Navigates to the previous screen.
onTapVector() { Get.back(); } 
 }
