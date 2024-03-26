import 'package:grouped_list/grouped_list.dart';
import 'models/month_item_model.dart';
import '../my_booking_list_page/widgets/month_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/my_booking_list_controller.dart';
import 'models/my_booking_list_model.dart';

class MyBookingListPage extends StatelessWidget {
  MyBookingListPage({Key? key})
      : super(
          key: key,
        );

  MyBookingListController controller =
      Get.put(MyBookingListController(MyBookingListModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildMonth(),
                    SizedBox(height: 34.v),
                    _buildMenu(),
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
  Widget _buildMonth() {
    return Obx(
      () => GroupedListView<MonthItemModel, String>(
        shrinkWrap: true,
        stickyHeaderBackgroundColor: Colors.transparent,
        elements: controller.myBookingListModelObj.value.monthItemList.value,
        groupBy: (element) => element.groupBy!.value,
        sort: false,
        groupSeparatorBuilder: (String value) {
          return Padding(
            padding: EdgeInsets.only(
              top: 29.v,
              bottom: 17.v,
            ),
            child: Column(
              children: [
                Text(
                  value,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: appTheme.gray900,
                  ),
                ),
              ],
            ),
          );
        },
        itemBuilder: (context, model) {
          return MonthItemWidget(
            model,
          );
        },
        separator: SizedBox(
          height: 1.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenu() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserBlueGray3000124x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 6.v),
              Text(
                "lbl_home".tr,
                style: CustomTextStyles.labelMediumBluegray30001,
              ),
            ],
          ),
          Spacer(
            flex: 27,
          ),
          _buildItemMenu(
            contrast: ImageConstant.imgNavExplore,
            label: "lbl_explore".tr,
          ),
          Spacer(
            flex: 23,
          ),
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFilePrimary,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_booking".tr,
                style: CustomTextStyles.labelMediumPrimaryBold,
              ),
            ],
          ),
          Spacer(
            flex: 23,
          ),
          _buildItemMenu(
            contrast: ImageConstant.imgNavWishlist,
            label: "lbl_wishlist".tr,
          ),
          Spacer(
            flex: 26,
          ),
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNavProfile,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 6.v),
              Text(
                "lbl_profile".tr,
                style: CustomTextStyles.labelMediumBluegray30001,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildItemMenu({
    required String contrast,
    required String label,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: contrast,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        SizedBox(height: 6.v),
        Text(
          label,
          style: CustomTextStyles.labelMediumBluegray30001.copyWith(
            color: appTheme.blueGray30001,
          ),
        ),
      ],
    );
  }
}
