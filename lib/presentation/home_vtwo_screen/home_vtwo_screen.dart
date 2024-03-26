import 'package:trip_tailor/presentation/home_vone_page/home_vone_page.dart';
import 'package:trip_tailor/presentation/my_profile_page/my_profile_page.dart';
import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_eleven.dart';
import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'widgets/frame_item_widget.dart';
import 'models/frame_item_model.dart';
import 'widgets/category_item_widget.dart';
import 'models/category_item_model.dart';
import 'package:trip_tailor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/home_vtwo_controller.dart';

// ignore_for_file: must_be_immutable
class HomeVtwoScreen extends GetWidget<HomeVtwoController> {
  const HomeVtwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildSearch(),
                      SizedBox(height: 25.v),
                      _buildTitle(),
                      SizedBox(height: 18.v),
                      _buildFrame(),
                      SizedBox(height: 27.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "lbl_category".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.v),
                      _buildCategory(),
                      SizedBox(height: 29.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "msg_ideas_for_your_next".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.v),
                      _buildCard(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "msg_hello_francene".tr,
              margin: EdgeInsets.only(right: 59.h),
            ),
            SizedBox(height: 7.v),
            AppbarSubtitleEleven(
              text: "msg_explore_the_best".tr,
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.fromLTRB(28.h, 15.v, 28.h, 16.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotification,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.fromLTRB(15.h, 1.v, 1.h, 15.v),
                  decoration: BoxDecoration(
                    color: appTheme.redA200,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                    border: Border.all(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      width: 1.h,
                      strokeAlign: strokeAlignOutside,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearch() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "msg_where_are_you_going".tr,
              hintStyle: theme.textTheme.bodyLarge!,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.outlineGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevision,
              ),
            ),
          ),
        ],
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
          Text(
            "lbl_choice_for_you2".tr,
            style: CustomTextStyles.titleMedium18,
          ),
          Text(
            "lbl_view_more".tr,
            style: CustomTextStyles.titleMediumPrimaryMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 240.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount:
                controller.homeVtwoModelObj.value.frameItemList.value.length,
            itemBuilder: (context, index) {
              FrameItemModel model =
                  controller.homeVtwoModelObj.value.frameItemList.value[index];
              return FrameItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategory() {
    return SizedBox(
      height: 90.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 30.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 29.h,
            );
          },
          itemCount:
              controller.homeVtwoModelObj.value.categoryItemList.value.length,
          itemBuilder: (context, index) {
            CategoryItemModel model =
                controller.homeVtwoModelObj.value.categoryItemList.value[index];
            return CategoryItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.gray10001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 180.v,
        width: 327.h,
        decoration: AppDecoration.fillGray10001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage180x327,
              height: 180.v,
              radius: BorderRadius.circular(
                20.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  right: 89.h,
                  bottom: 16.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_awaken_your_travel".tr,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer18,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "msg_experience_the_world".tr,
                      style: CustomTextStyles.labelLargeOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeVonePage;
      case BottomBarEnum.Explore:
        return "/";
      case BottomBarEnum.Booking:
        return "/";
      case BottomBarEnum.Wishlist:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.myProfilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeVonePage:
        return HomeVonePage();
      case AppRoutes.myProfilePage:
        return MyProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
