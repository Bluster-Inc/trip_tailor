import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/custom_icon_button.dart';import 'package:trip_tailor/widgets/custom_text_form_field.dart';import 'package:trip_tailor/core/utils/validation_functions.dart';import 'package:trip_tailor/widgets/custom_phone_number.dart';import 'package:country_pickers/country.dart';import 'package:trip_tailor/widgets/custom_drop_down.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/my_profile_edit_profile_controller.dart';
// ignore_for_file: must_be_immutable
class MyProfileEditProfileScreen extends GetWidget<MyProfileEditProfileController> {MyProfileEditProfileScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: SingleChildScrollView(padding: EdgeInsets.only(top: 44.v), child: SizedBox(height: 1048.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 100.adaptSize, width: 100.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgImage100x100, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h), alignment: Alignment.center), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(5.h), decoration: IconButtonStyleHelper.outlineOnPrimaryContainerTL12, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgEdit))])), SizedBox(height: 50.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_account_info".tr, style: CustomTextStyles.titleMedium18_1)), SizedBox(height: 18.v), _buildInput(), SizedBox(height: 16.v), _buildCalendar(label: "lbl_date_of_birth".tr, onTapCalendar: () {onTapCalendar();}), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Text("msg_email_phone_number".tr, style: CustomTextStyles.titleMedium18_1)), SizedBox(height: 18.v), _buildPhoneNumber(), SizedBox(height: 16.v), _buildPhoneNumber1(), SizedBox(height: 28.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_passport_detail".tr, style: CustomTextStyles.titleMedium18_1)), SizedBox(height: 16.v), _buildInput1(), SizedBox(height: 16.v), _buildCalendar(label: "lbl_issues_date".tr, onTapCalendar: () {onTapCalendar1();}), SizedBox(height: 16.v), _buildCalendar(label: "lbl_expiration_date".tr, onTapCalendar: () {onTapCalendar2();}), SizedBox(height: 16.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 20.adaptSize, width: 20.adaptSize)), hintText: "lbl_nationality".tr, items: controller.myProfileEditProfileModelObj.value.dropdownItemList!.value, contentPadding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v), borderDecoration: DropDownStyleHelper.outlineBlueGrayTL16), SizedBox(height: 24.v), Text("msg_emergency_contact".tr, style: CustomTextStyles.titleMedium18_1), SizedBox(height: 16.v), _buildEmail(), SizedBox(height: 16.v), _buildPhoneNumber2()]))), _buildBottomBar()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_account_detail".tr)); } 
/// Section Widget
Widget _buildInput() { return CustomTextFormField(controller: controller.inputController, hintText: "msg_francene_vandyne".tr, borderDecoration: TextFormFieldStyleHelper.outlineBlueGray); } 
/// Section Widget
Widget _buildPhoneNumber() { return CustomTextFormField(controller: controller.phoneNumberController, hintText: "msg_francenevandyne_mail_com".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.outlineBlueGray); } 
/// Section Widget
Widget _buildPhoneNumber1() { return Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController1, onTap: (Country value) {controller.selectedCountry.value = value;})); } 
/// Section Widget
Widget _buildInput1() { return Container(width: 327.h, padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineBluegray1005.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), Text("lbl_passport_number".tr, style: CustomTextStyles.bodyLargeBluegray30001)])); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_email".tr, hintStyle: theme.textTheme.bodyLarge!, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v), borderDecoration: TextFormFieldStyleHelper.outlineBlueGray); } 
/// Section Widget
Widget _buildPhoneNumber2() { return Obx(() => CustomPhoneNumber(country: controller.selectedCountry1.value, controller: controller.phoneNumberController2, onTap: (Country value) {controller.selectedCountry1.value = value;})); } 
/// Section Widget
Widget _buildSaveChange() { return CustomElevatedButton(text: "lbl_save_change".tr); } 
/// Section Widget
Widget _buildBottomBar() { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(bottom: 382.v), padding: EdgeInsets.symmetric(horizontal: 24.h), decoration: AppDecoration.outlineGrayF, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 12.v), _buildSaveChange()]))); } 
/// Common widget
Widget _buildCalendar({required String label, Function? onTapCalendar, }) { return GestureDetector(onTap: () {onTapCalendar?.call();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v), decoration: AppDecoration.outlineBluegray1005.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(label, style: CustomTextStyles.bodyLargeBluegray30001.copyWith(color: appTheme.blueGray30001)), CustomImageView(imagePath: ImageConstant.imgCalendarBlueGray30001, height: 24.adaptSize, width: 24.adaptSize)]))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 

/// Displays a date picker dialog and updates the selected date in the
/// [myProfileEditProfileModelObj] object of the current [label] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapCalendar() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.myProfileEditProfileModelObj.value.selectedLabel!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.myProfileEditProfileModelObj.value.selectedLabel!.value = dateTime;controller.myProfileEditProfileModelObj.value.label.value = dateTime.format(pattern: dateTimeFormatPattern);} } 

/// Displays a date picker dialog and updates the selected date in the
/// [myProfileEditProfileModelObj] object of the current [label1] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapCalendar1() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.myProfileEditProfileModelObj.value.selectedLabel1!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.myProfileEditProfileModelObj.value.selectedLabel1!.value = dateTime;controller.myProfileEditProfileModelObj.value.label1.value = dateTime.format(pattern: dateTimeFormatPattern);} } 

/// Displays a date picker dialog and updates the selected date in the
/// [myProfileEditProfileModelObj] object of the current [label12] if the user 
/// selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapCalendar2() async  { DateTime? dateTime  = await showDatePicker(context: Get.context!,initialDate: controller.myProfileEditProfileModelObj.value.selectedLabel12!.value , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {controller.myProfileEditProfileModelObj.value.selectedLabel12!.value = dateTime;controller.myProfileEditProfileModelObj.value.label12.value = dateTime.format(pattern: dateTimeFormatPattern);} } 
 }
