import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_title_circleimage.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_eight.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_thirteen.dart';import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:trip_tailor/widgets/custom_text_form_field.dart';import 'package:trip_tailor/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/message_text_attachment_controller.dart';class MessageTextAttachmentScreen extends GetWidget<MessageTextAttachmentController> {const MessageTextAttachmentScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 38.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_05_00".tr, style: CustomTextStyles.labelLargeBluegray30001_1), SizedBox(height: 6.v), Container(width: 232.h, margin: EdgeInsets.only(right: 95.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderBL12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 7.v), Container(width: 191.h, margin: EdgeInsets.only(right: 8.h), child: Text("msg_i_have_a_great_place".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallGray900_2.copyWith(height: 1.70)))])), SizedBox(height: 18.v), Align(alignment: Alignment.centerRight, child: Text("lbl_05_20".tr, style: CustomTextStyles.labelLargeBluegray30001_1)), SizedBox(height: 6.v), Align(alignment: Alignment.centerRight, child: Container(width: 221.h, margin: EdgeInsets.only(left: 106.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.customBorderTL12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 7.v), Container(width: 176.h, margin: EdgeInsets.only(right: 12.h), child: Text("msg_where_is_the_place".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallOnPrimaryContainer_1.copyWith(height: 1.70)))]))), SizedBox(height: 10.v), Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEye, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_viewed".tr, style: CustomTextStyles.labelLargeBluegray30001_1))])), SizedBox(height: 20.v), Text("lbl_05_21".tr, style: CustomTextStyles.labelLargeBluegray30001_1), SizedBox(height: 6.v), CustomElevatedButton(height: 48.v, width: 196.h, text: "msg_here_it_is_it_s".tr, buttonStyle: CustomButtonStyles.fillGrayBL12, buttonTextStyle: CustomTextStyles.titleSmallGray900_2), SizedBox(height: 8.v), Container(margin: EdgeInsets.only(right: 57.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.customBorderBL12), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), CustomImageView(imagePath: ImageConstant.imgUnsplashExfdowkybqw, height: 110.v, radius: BorderRadius.circular(8.h)), SizedBox(height: 10.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_beautifull_bali".tr, style: CustomTextStyles.labelLargeGray900), CustomImageView(imagePath: ImageConstant.imgShareTwo, height: 16.adaptSize, width: 16.adaptSize)]), SizedBox(height: 6.v), Container(width: 207.h, margin: EdgeInsets.only(right: 30.h), child: Text("msg_justo_morbi_ac".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelMedium!.copyWith(height: 1.60)))])), SizedBox(height: 50.v), _buildWriteMessage(), SizedBox(height: 7.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), title: Padding(padding: EdgeInsets.only(left: 12.h), child: Row(children: [AppbarTitleCircleimage(imagePath: ImageConstant.imgImage10), Padding(padding: EdgeInsets.only(left: 12.h, top: 4.v, bottom: 2.v), child: Column(children: [AppbarSubtitleEight(text: "msg_maryland_winkles".tr), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(right: 62.h), child: Row(children: [Container(height: 6.adaptSize, width: 6.adaptSize, margin: EdgeInsets.only(top: 2.v, bottom: 3.v), decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(3.h))), AppbarSubtitleThirteen(text: "lbl_offline".tr, margin: EdgeInsets.only(left: 4.h))]))]))])), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDotsVerticalGray90024x24, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v))]); } 
/// Section Widget
Widget _buildWriteMessage() { return Row(children: [Expanded(child: CustomTextFormField(controller: controller.messageController, hintText: "lbl_write_message".tr, hintStyle: CustomTextStyles.titleSmallBluegray100, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(12.h, 14.v, 10.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgUserBlueGray3000120x20, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), suffix: Container(margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 14.v), child: CustomImageView(imagePath: ImageConstant.imgTablerlink, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v), contentPadding: EdgeInsets.symmetric(vertical: 15.v), borderDecoration: TextFormFieldStyleHelper.fillGrayTL12, filled: true, fillColor: appTheme.gray10001)), Padding(padding: EdgeInsets.only(left: 12.h), child: CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.fillPrimaryTL12, child: CustomImageView(imagePath: ImageConstant.imgMenu)))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
