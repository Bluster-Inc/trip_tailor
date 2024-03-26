import 'package:trip_tailor/presentation/home_vone_page/home_vone_page.dart';
import 'package:trip_tailor/presentation/my_profile_page/my_profile_page.dart';
import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_twelve.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title_image.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_three.dart';
import 'widgets/list1_item_widget.dart';
import 'models/list1_item_model.dart';
import 'widgets/list2_item_widget.dart';
import 'models/list2_item_model.dart';
import 'package:trip_tailor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/home_scroll_down_one_controller.dart';

// ignore_for_file: must_be_immutable
class HomeScrollDownOneScreen extends GetWidget<HomeScrollDownOneController> {
  const HomeScrollDownOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTitle(),
                      SizedBox(height: 18.v),
                      _buildList(),
                      SizedBox(height: 28.v),
                      _buildTitle1(),
                      SizedBox(height: 18.v),
                      _buildList1(),
                      SizedBox(height: 30.v),
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
            AppbarSubtitleTwelve(
              text: "msg_current_location2".tr,
              margin: EdgeInsets.only(right: 36.h),
            ),
            SizedBox(height: 8.v),
            Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgSave,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                AppbarSubtitleThree(
                  text: "lbl_san_francisco".tr,
                  margin: EdgeInsets.only(left: 8.h),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.fromLTRB(28.h, 16.v, 28.h, 15.v),
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
  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_popular_accomodation".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              Text(
                "msg_based_on_the_activity".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray600,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 13.v,
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
          right: 71.h,
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
                height: 16.v,
              );
            },
            itemCount: controller
                .homeScrollDownOneModelObj.value.list1ItemList.value.length,
            itemBuilder: (context, index) {
              List1ItemModel model = controller
                  .homeScrollDownOneModelObj.value.list1ItemList.value[index];
              return List1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_explore_everywhere".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              Text(
                "msg_based_on_the_activity".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray600,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildList1() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 152.v,
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
            itemCount: controller
                .homeScrollDownOneModelObj.value.list2ItemList.value.length,
            itemBuilder: (context, index) {
              List2ItemModel model = controller
                  .homeScrollDownOneModelObj.value.list2ItemList.value[index];
              return List2ItemWidget(
                model,
              );
            },
          ),
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
              imagePath: ImageConstant.imgImg180x327,
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
