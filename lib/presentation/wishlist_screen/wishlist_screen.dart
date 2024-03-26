import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle.dart';import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';import 'widgets/istanbulcollection_item_widget.dart';import 'models/istanbulcollection_item_model.dart';import 'package:trip_tailor/widgets/custom_floating_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/wishlist_controller.dart';class WishlistScreen extends GetWidget<WishlistController> {const WishlistScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 42.v), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 20.v), _buildIstanbulcollection(), Spacer(), _buildMenu()])), floatingActionButton: _buildFloatingActionButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_wishlist".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgTelevision, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v))]); } 
/// Section Widget
Widget _buildIstanbulcollection() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.wishlistModelObj.value.istanbulcollectionItemList.value.length, itemBuilder: (context, index) {IstanbulcollectionItemModel model = controller.wishlistModelObj.value.istanbulcollectionItemList.value[index]; return IstanbulcollectionItemWidget(model);}))); } 
/// Section Widget
Widget _buildMenu() { return Padding(padding: EdgeInsets.symmetric(horizontal: 29.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(children: [CustomImageView(imagePath: ImageConstant.imgUserBlueGray3000124x24, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 6.v), Text("lbl_home".tr, style: CustomTextStyles.labelMediumBluegray30001)]), Spacer(flex: 27), Column(children: [CustomImageView(imagePath: ImageConstant.imgNavExplore, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 7.v), Text("lbl_explore".tr, style: CustomTextStyles.labelMediumBluegray30001)]), Spacer(flex: 23), _buildItemMenu(favorite: ImageConstant.imgNavBooking, label: "lbl_booking".tr), Spacer(flex: 23), _buildItemMenu(favorite: ImageConstant.imgFavoritePrimary, label: "lbl_wishlist".tr), Spacer(flex: 25), Column(children: [CustomImageView(imagePath: ImageConstant.imgNavProfile, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 6.v), Text("lbl_profile".tr, style: CustomTextStyles.labelMediumBluegray30001)])])); } 
/// Section Widget
Widget _buildFloatingActionButton() { return CustomFloatingButton(height: 56, width: 56, backgroundColor: theme.colorScheme.primary, decoration: FloatingButtonStyleHelper.fillPrimary, child: CustomImageView(imagePath: ImageConstant.imgPlusOnprimarycontainer, height: 28.0.v, width: 28.0.h)); } 
/// Common widget
Widget _buildItemMenu({required String favorite, required String label, }) { return Column(children: [CustomImageView(imagePath: favorite, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 6.v), Text(label, style: CustomTextStyles.labelMediumPrimaryBold.copyWith(color: theme.colorScheme.primary))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
