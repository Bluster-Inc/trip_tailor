import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'widgets/list6_item_widget.dart';
import 'models/list6_item_model.dart';
import 'widgets/grid_item_widget.dart';
import 'models/grid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_search_controller.dart';

// ignore_for_file: must_be_immutable
class HotelSearchScreen extends GetWidget<HotelSearchController> {
  const HotelSearchScreen({Key? key})
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBar(),
              SizedBox(height: 71.v),
              _buildTitle(),
              SizedBox(height: 15.v),
              _buildList(),
              SizedBox(height: 35.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_explore_places".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              SizedBox(height: 16.v),
              _buildGrid(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopBar() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_location".tr,
            style: CustomTextStyles.titleSmallCyanA100Bold,
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Expanded(
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "msg_where_are_you_going".tr,
                  hintStyle: CustomTextStyles.bodyLargeCyanA100,
                  contentPadding: EdgeInsets.only(
                    top: 14.v,
                    right: 30.h,
                    bottom: 14.v,
                  ),
                  borderDecoration: SearchViewStyleHelper.outlineCyanA,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
                child: Text(
                  "lbl_cancel".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 55.h,
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
              height: 24.v,
            );
          },
          itemCount:
              controller.hotelSearchModelObj.value.list6ItemList.value.length,
          itemBuilder: (context, index) {
            List6ItemModel model =
                controller.hotelSearchModelObj.value.list6ItemList.value[index];
            return List6ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGrid() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 89.v,
              crossAxisCount: 2,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                controller.hotelSearchModelObj.value.gridItemList.value.length,
            itemBuilder: (context, index) {
              GridItemModel model = controller
                  .hotelSearchModelObj.value.gridItemList.value[index];
              return GridItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
