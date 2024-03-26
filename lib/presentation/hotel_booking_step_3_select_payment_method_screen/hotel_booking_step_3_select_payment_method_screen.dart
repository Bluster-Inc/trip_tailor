import 'widgets/list10_item_widget.dart';import 'models/list10_item_model.dart';import 'widgets/list11_item_widget.dart';import 'models/list11_item_model.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/hotel_booking_step_3_select_payment_method_controller.dart';class HotelBookingStep3SelectPaymentMethodScreen extends GetWidget<HotelBookingStep3SelectPaymentMethodController> {const HotelBookingStep3SelectPaymentMethodScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(right: 92.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgCloseGray900, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 1.v), onTap: () {onTapImgClose();}), Padding(padding: EdgeInsets.only(left: 68.h, top: 3.v), child: Text("lbl_payment_method".tr, style: CustomTextStyles.titleMedium18_1))])), SizedBox(height: 45.v), _buildTitle(), SizedBox(height: 18.v), _buildList(), SizedBox(height: 29.v), Text("lbl_other_payment".tr, style: theme.textTheme.titleMedium), SizedBox(height: 17.v), _buildList1()])), bottomNavigationBar: _buildDone())); } 
/// Section Widget
Widget _buildTitle() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_credit_or_debit".tr, style: theme.textTheme.titleMedium), Text("lbl_add_new".tr, style: CustomTextStyles.titleSmallPrimaryBold)]); } 
/// Section Widget
Widget _buildList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.hotelBookingStep3SelectPaymentMethodModelObj.value.list10ItemList.value.length, itemBuilder: (context, index) {List10ItemModel model = controller.hotelBookingStep3SelectPaymentMethodModelObj.value.list10ItemList.value[index]; return List10ItemWidget(model);})); } 
/// Section Widget
Widget _buildList1() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.hotelBookingStep3SelectPaymentMethodModelObj.value.list11ItemList.value.length, itemBuilder: (context, index) {List11ItemModel model = controller.hotelBookingStep3SelectPaymentMethodModelObj.value.list11ItemList.value[index]; return List11ItemWidget(model);})); } 
/// Section Widget
Widget _buildDone() { return CustomElevatedButton(text: "lbl_done".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 42.v)); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
 }
