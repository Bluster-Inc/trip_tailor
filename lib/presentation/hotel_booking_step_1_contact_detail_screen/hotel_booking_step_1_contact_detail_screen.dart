import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/custom_text_form_field.dart';import 'package:trip_tailor/widgets/custom_phone_number.dart';import 'package:country_pickers/country.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/hotel_booking_step_1_contact_detail_controller.dart';
// ignore_for_file: must_be_immutable
class HotelBookingStep1ContactDetailScreen extends GetWidget<HotelBookingStep1ContactDetailController> {HotelBookingStep1ContactDetailScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_full_name2".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 14.v), _buildFullName(), SizedBox(height: 19.v), Text("lbl_phone_number2".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 14.v), _buildPhoneNumber(), SizedBox(height: 19.v), Text("lbl_email".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 14.v), _buildEmail(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildDone())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCloseGray900, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v), onTap: () {onTapClose();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_contact_details2".tr)); } 
/// Section Widget
Widget _buildFullName() { return CustomTextFormField(controller: controller.fullNameController, hintText: "msg_francene_vandyne".tr, borderDecoration: TextFormFieldStyleHelper.outlineBlueGray); } 
/// Section Widget
Widget _buildPhoneNumber() { return Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country value) {controller.selectedCountry.value = value;})); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_franceneva".tr, textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildDone() { return CustomElevatedButton(text: "lbl_done".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 42.v)); } 

/// Navigates to the previous screen.
onTapClose() { Get.back(); } 
 }
