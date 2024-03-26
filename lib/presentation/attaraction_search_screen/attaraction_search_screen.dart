import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'widgets/list18_item_widget.dart';
import 'models/list18_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/attaraction_search_controller.dart';

// ignore_for_file: must_be_immutable
class AttaractionSearchScreen extends GetWidget<AttaractionSearchController> {
  const AttaractionSearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTopBar(),
              SizedBox(height: 71.v),
              _buildTitle(),
              SizedBox(height: 15.v),
              _buildList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopBar() {
    return Container(
      decoration: AppDecoration.fillPrimary,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(24.h, 12.v, 24.h, 11.v),
        decoration: AppDecoration.outlineLightblueA200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomSearchView(
                controller: controller.searchController,
                hintText: "msg_find_attractions".tr,
                hintStyle: CustomTextStyles.bodyMediumCyanA10001,
                contentPadding: EdgeInsets.only(
                  top: 11.v,
                  right: 30.h,
                  bottom: 11.v,
                ),
                borderDecoration: SearchViewStyleHelper.outlineCyanATL10,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 11.v,
                bottom: 11.v,
              ),
              child: Text(
                "lbl_cancel".tr,
                style: CustomTextStyles.titleSmallOnPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_history".tr,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_delete".tr,
              style: CustomTextStyles.titleMediumPrimaryMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 35.h,
        ),
        child: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 20.v,
              );
            },
            itemCount: controller
                .attaractionSearchModelObj.value.list18ItemList.value.length,
            itemBuilder: (context, index) {
              List18ItemModel model = controller
                  .attaractionSearchModelObj.value.list18ItemList.value[index];
              return List18ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
