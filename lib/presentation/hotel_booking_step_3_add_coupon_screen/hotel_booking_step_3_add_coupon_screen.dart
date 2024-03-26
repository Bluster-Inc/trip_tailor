import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/custom_text_form_field.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'widgets/list12_item_widget.dart';import 'models/list12_item_model.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/hotel_booking_step_3_add_coupon_controller.dart';class HotelBookingStep3AddCouponScreen extends GetWidget<HotelBookingStep3AddCouponController> {const HotelBookingStep3AddCouponScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomTextFormField(controller: controller.inputController, hintText: "lbl_jpnholi".tr, textInputAction: TextInputAction.done), SizedBox(height: 16.v), CustomElevatedButton(text: "lbl_apply".tr), SizedBox(height: 37.v), Text("msg_available_coupons".tr, style: theme.textTheme.titleMedium), SizedBox(height: 17.v), _buildList()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCloseGray900, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapClose();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_coupons".tr)); } 
/// Section Widget
Widget _buildList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.hotelBookingStep3AddCouponModelObj.value.list12ItemList.value.length, itemBuilder: (context, index) {List12ItemModel model = controller.hotelBookingStep3AddCouponModelObj.value.list12ItemList.value[index]; return List12ItemWidget(model);})); } 

/// Navigates to the previous screen.
onTapClose() { Get.back(); } 
 }