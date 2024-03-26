import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'widgets/list25_item_widget.dart';import 'models/list25_item_model.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/link_account_social_media_controller.dart';class LinkAccountSocialMediaScreen extends GetWidget<LinkAccountSocialMediaController> {const LinkAccountSocialMediaScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 20.v, right: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.linkAccountSocialMediaModelObj.value.list25ItemList.value.length, itemBuilder: (context, index) {List25ItemModel model = controller.linkAccountSocialMediaModelObj.value.list25ItemList.value[index]; return List25ItemWidget(model);}))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_link_account".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
