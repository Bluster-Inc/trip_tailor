import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'widgets/list26_item_widget.dart';import 'models/list26_item_model.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/select_language_controller.dart';class SelectLanguageScreen extends GetWidget<SelectLanguageController> {const SelectLanguageScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(margin: EdgeInsets.only(left: 23.h, top: 19.v, right: 23.h), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.selectLanguageModelObj.value.list26ItemList.value.length, itemBuilder: (context, index) {List26ItemModel model = controller.selectLanguageModelObj.value.list26ItemList.value[index]; return List26ItemWidget(model);}))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_language".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
