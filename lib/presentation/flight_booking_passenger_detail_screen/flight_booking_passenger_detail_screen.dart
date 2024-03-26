import 'package:trip_tailor/widgets/custom_drop_down.dart';import 'package:trip_tailor/widgets/custom_text_form_field.dart';import 'package:trip_tailor/widgets/custom_phone_number.dart';import 'package:country_pickers/country.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/flight_booking_passenger_detail_controller.dart';
// ignore_for_file: must_be_immutable
class FlightBookingPassengerDetailScreen extends GetWidget<FlightBookingPassengerDetailController> {FlightBookingPassengerDetailScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.only(left: 24.h, top: 64.v, right: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 89.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgCloseGray900, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 1.v), onTap: () {onTapImgClose();}), Padding(padding: EdgeInsets.only(left: 66.h, top: 3.v), child: Text("msg_passenger_details".tr, style: CustomTextStyles.titleMedium18_1))])), SizedBox(height: 33.v), Text("lbl_title".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 14.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgArrowDownBlueGray30001, height: 20.adaptSize, width: 20.adaptSize)), hintText: "lbl_mrs".tr, items: controller.flightBookingPassengerDetailModelObj.value.dropdownItemList!.value), SizedBox(height: 19.v), Text("lbl_full_name2".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 14.v), _buildFullName(), SizedBox(height: 19.v), Text("lbl_phone_number2".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 14.v), _buildPhoneNumber(), SizedBox(height: 19.v), Text("lbl_email".tr, style: CustomTextStyles.titleMediumGray600), SizedBox(height: 14.v), _buildEmail(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildDone())); } 
/// Section Widget
Widget _buildFullName() { return CustomTextFormField(controller: controller.fullNameController, hintText: "msg_francene_vandyne".tr, borderDecoration: TextFormFieldStyleHelper.outlineBlueGray); } 
/// Section Widget
Widget _buildPhoneNumber() { return Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country value) {controller.selectedCountry.value = value;})); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_franceneva".tr, textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildDone() { return CustomElevatedButton(text: "lbl_done".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 42.v)); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
 }
