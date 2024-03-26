import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title_searchview_two.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_six.dart';
import 'widgets/list19_item_widget.dart';
import 'models/list19_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/attaraction_search_type_controller.dart';

// ignore_for_file: must_be_immutable
class AttaractionSearchTypeScreen
    extends GetWidget<AttaractionSearchTypeController> {
  const AttaractionSearchTypeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 72.v,
            right: 24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_we_found_3_thing".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 21.v),
              _buildList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 64.v,
      title: AppbarTitleSearchviewTwo(
        margin: EdgeInsets.only(left: 24.h),
        hintText: "lbl_museum".tr,
        controller: controller.searchController,
      ),
      actions: [
        AppbarSubtitleSix(
          text: "lbl_clear".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 23.v,
          ),
        ),
      ],
      styleType: Style.bgOutline_2,
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
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
              .attaractionSearchTypeModelObj.value.list19ItemList.value.length,
          itemBuilder: (context, index) {
            List19ItemModel model = controller.attaractionSearchTypeModelObj
                .value.list19ItemList.value[index];
            return List19ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
