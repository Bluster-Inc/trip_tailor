import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/custom_icon_button.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:grouped_list/grouped_list.dart';import 'models/link_item_model.dart';import '../link_account_payment_method_screen/widgets/link_item_widget.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/link_account_payment_method_controller.dart';class LinkAccountPaymentMethodScreen extends GetWidget<LinkAccountPaymentMethodController> {const LinkAccountPaymentMethodScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v), child: Column(children: [_buildCreditOrDebit(), SizedBox(height: 29.v), _buildLink(), SizedBox(height: 8.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_payment_method2".tr)); } 
/// Section Widget
Widget _buildAdd() { return CustomElevatedButton(height: 24.v, width: 45.h, text: "lbl_add".tr, margin: EdgeInsets.symmetric(vertical: 12.v), buttonStyle: CustomButtonStyles.fillLightBlue, buttonTextStyle: CustomTextStyles.labelMediumPrimaryBold); } 
/// Section Widget
Widget _buildCreditOrDebit() { return Container(padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineBluegray1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(12.h), decoration: IconButtonStyleHelper.fillGrayTL12, child: CustomImageView(imagePath: ImageConstant.imgTelevisionGray90048x48)), Padding(padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_credit_or_debit".tr, style: CustomTextStyles.titleSmallGray900), SizedBox(height: 10.v), Align(alignment: Alignment.center, child: Text("msg_mastercard_visa2".tr, style: theme.textTheme.labelLarge))])), Spacer(), _buildAdd()])); } 
/// Section Widget
Widget _buildLink() { return Obx(() => GroupedListView<LinkItemModel, String>(shrinkWrap: true, stickyHeaderBackgroundColor: Colors.transparent, elements: controller.linkAccountPaymentMethodModelObj.value.linkItemList.value, groupBy: (element) => element.groupBy!.value, sort: false, groupSeparatorBuilder: (String value) {return Padding(padding: EdgeInsets.only(top: 27.v, bottom: 18.v), child: Column(children: [Text(value, style: CustomTextStyles.titleMediumGray90001.copyWith(color: appTheme.gray90001))]));}, itemBuilder: (context, model) {return LinkItemWidget(model);}, separator: SizedBox(height: 16.v))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }