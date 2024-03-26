import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_trailing_image.dart';
import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'widgets/category2_item_widget.dart';
import 'models/category2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/faq_controller.dart';

// ignore_for_file: must_be_immutable
class FaqScreen extends GetWidget<FaqController> {
  const FaqScreen({Key? key})
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
              _buildThirtyFive(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 28.v,
                ),
                child: Column(
                  children: [
                    _buildTitle(),
                    SizedBox(height: 21.v),
                    _buildCategory(),
                    SizedBox(height: 38.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_popular_article".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    _buildItem(
                      title: "msg_how_to_reschedule".tr,
                    ),
                    _buildItem(
                      title: "msg_how_to_checkin_online".tr,
                    ),
                    _buildItem(
                      title: "msg_how_to_check_my".tr,
                    ),
                    SizedBox(height: 4.v),
                    _buildItem(
                      title: "msg_payment_confirmation".tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyFive() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 20.v),
          CustomAppBar(
            height: 64.v,
            title: AppbarSubtitleOne(
              text: "lbl_traveline".tr,
              margin: EdgeInsets.only(left: 24.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgMenu2,
                margin: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 20.v,
                ),
              ),
            ],
            styleType: Style.bgOutline_2,
          ),
          SizedBox(height: 27.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                "msg_frequently_asked".tr,
                style: CustomTextStyles.headlineSmallOnPrimaryContainer,
              ),
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "lbl_search".tr,
              hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer,
              borderDecoration: SearchViewStyleHelper.outlineLightBlueA,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "msg_explore_by_topics".tr,
          style: theme.textTheme.titleMedium,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            "lbl_see_all".tr,
            style: CustomTextStyles.titleSmallPrimary,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCategory() {
    return SizedBox(
      height: 78.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(
            left: 12.h,
            right: 9.h,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 36.h,
            );
          },
          itemCount:
              controller.faqModelObj.value.category2ItemList.value.length,
          itemBuilder: (context, index) {
            Category2ItemModel model =
                controller.faqModelObj.value.category2ItemList.value[index];
            return Category2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildItem({required String title}) {
    return Container(
      padding: EdgeInsets.only(
        top: 18.v,
        bottom: 17.v,
      ),
      decoration: AppDecoration.outlineGray2001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              title,
              style: CustomTextStyles.titleSmallGray900.copyWith(
                color: appTheme.gray900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckPrimary,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ],
      ),
    );
  }
}
