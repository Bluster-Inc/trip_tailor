import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';import 'package:trip_tailor/widgets/app_bar/appbar_leading_image.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_five.dart';import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_eleven.dart';import 'widgets/sin_item_widget.dart';import 'models/sin_item_model.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/flight_result_list_controller.dart';class FlightResultListScreen extends GetWidget<FlightResultListController> {const FlightResultListScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 17.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_available_class".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 18.v), _buildSIN()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowRight, margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: Column(children: [AppbarSubtitleFive(text: "lbl_sin_lhr".tr, margin: EdgeInsets.symmetric(horizontal: 25.h)), SizedBox(height: 7.v), AppbarSubtitleEleven(text: "msg_aug_26_1_passenger".tr)])); } 
/// Section Widget
Widget _buildSIN() { return Expanded(child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 8.0.v), child: SizedBox(width: 295.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray200)));}, itemCount: controller.flightResultListModelObj.value.sinItemList.value.length, itemBuilder: (context, index) {SinItemModel model = controller.flightResultListModelObj.value.sinItemList.value[index]; return SinItemWidget(model);}))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
