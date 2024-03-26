import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/wishlist_success_new_collection_controller.dart';
// ignore_for_file: must_be_immutable
class WishlistSuccessNewCollectionBottomsheet extends StatelessWidget {WishlistSuccessNewCollectionBottomsheet(this.controller, {Key? key}) : super(key: key);

WishlistSuccessNewCollectionController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderTL35), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 8.v, width: 40.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h))), SizedBox(height: 16.v), CustomImageView(imagePath: ImageConstant.imgCloseGray600, height: 20.adaptSize, width: 20.adaptSize, alignment: Alignment.centerRight, onTap: () {onTapImgClose();}), SizedBox(height: 16.v), CustomImageView(imagePath: ImageConstant.imgIllustration120x120, height: 120.adaptSize, width: 120.adaptSize, radius: BorderRadius.circular(60.h)), SizedBox(height: 32.v), Text("msg_collection_created".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 12.v), Container(width: 248.h, margin: EdgeInsets.symmetric(horizontal: 39.h), child: Text("msg_dolor_id_nisl_lacus".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumGray600Medium.copyWith(height: 1.65))), SizedBox(height: 44.v), CustomElevatedButton(text: "msg_add_your_product".tr), SizedBox(height: 26.v)])); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
 }
