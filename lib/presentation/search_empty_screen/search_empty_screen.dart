import 'package:trip_tailor/widgets/custom_search_view.dart';import 'widgets/list4_item_widget.dart';import 'models/list4_item_model.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/search_empty_controller.dart';class SearchEmptyScreen extends GetWidget<SearchEmptyController> {const SearchEmptyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 56.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAppbar(), SizedBox(height: 31.v), _buildList()])))); } 
/// Section Widget
Widget _buildAppbar() { return Row(children: [CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 12.v), onTap: () {onTapImgArrowLeft();}), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h), child: CustomSearchView(controller: controller.searchController, hintText: "lbl_hometown".tr, hintStyle: CustomTextStyles.bodyMediumBluegray100, contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v), borderDecoration: SearchViewStyleHelper.outlineGrayTL12)))]); } 
/// Section Widget
Widget _buildList() { return Padding(padding: EdgeInsets.only(right: 96.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 30.v);}, itemCount: controller.searchEmptyModelObj.value.list4ItemList.value.length, itemBuilder: (context, index) {List4ItemModel model = controller.searchEmptyModelObj.value.list4ItemList.value[index]; return List4ItemWidget(model);}))); } 

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); } 
 }
