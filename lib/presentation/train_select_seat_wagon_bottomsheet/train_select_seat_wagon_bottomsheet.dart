import 'widgets/title_item_widget.dart';import 'models/title_item_model.dart';import 'package:trip_tailor/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:trip_tailor/core/app_export.dart';import 'controller/train_select_seat_wagon_controller.dart';
// ignore_for_file: must_be_immutable
class TrainSelectSeatWagonBottomsheet extends StatelessWidget {TrainSelectSeatWagonBottomsheet(this.controller, {Key? key}) : super(key: key);

TrainSelectSeatWagonController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderTL35), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 8.v, width: 40.h, decoration: BoxDecoration(color: appTheme.gray100, borderRadius: BorderRadius.circular(4.h))), SizedBox(height: 19.v), _buildFrame(), SizedBox(height: 16.v), Divider(), SizedBox(height: 23.v), _buildTitle(), SizedBox(height: 32.v), CustomElevatedButton(text: "lbl_confirm".tr), SizedBox(height: 26.v)])); } 
/// Section Widget
Widget _buildFrame() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_seat_wagon".tr, style: CustomTextStyles.titleMedium18_1)), CustomImageView(imagePath: ImageConstant.imgCloseGray600, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 3.v), onTap: () {onTapImgClose();})]); } 
/// Section Widget
Widget _buildTitle() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.trainSelectSeatWagonModelObj.value.titleItemList.value.length, itemBuilder: (context, index) {TitleItemModel model = controller.trainSelectSeatWagonModelObj.value.titleItemList.value[index]; return TitleItemWidget(model);})); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
 }
