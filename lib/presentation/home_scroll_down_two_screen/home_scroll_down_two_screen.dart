import 'package:trip_tailor/presentation/home_vone_page/home_vone_page.dart';
import 'package:trip_tailor/presentation/my_profile_page/my_profile_page.dart';
import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_eleven.dart';
import 'widgets/list3_item_widget.dart';
import 'models/list3_item_model.dart';
import 'package:trip_tailor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/home_scroll_down_two_controller.dart';

// ignore_for_file: must_be_immutable
class HomeScrollDownTwoScreen extends GetWidget<HomeScrollDownTwoController> {
  const HomeScrollDownTwoScreen({Key? key})
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
              SizedBox(height: 23.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text(
                          "msg_ideas_for_your_next".tr,
                          style: CustomTextStyles.titleMedium18,
                        ),
                      ),
                      SizedBox(height: 15.v),
                      _buildCard(),
                      SizedBox(height: 27.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: _buildTitle(
                          title: "lbl_explore_places".tr,
                          title1: "lbl_view_more".tr,
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildList(),
                      SizedBox(height: 30.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: _buildTitle(
                          title: "lbl_best_stays".tr,
                          title1: "lbl_view_more".tr,
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 23.h,
                          right: 72.h,
                        ),
                        child: Row(
                          children: [
                            _buildImage(
                              image: ImageConstant.imgImg100x88,
                              favorite: ImageConstant.imgFavoriteRedA200,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 6.v,
                                bottom: 6.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_tour_with_sunset".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 14.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgMapPin,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_santorini".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgStarGray600,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 16.h,
                                          top: 1.v,
                                          bottom: 1.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_4_9".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15.v),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_235".tr,
                                          style: CustomTextStyles
                                              .titleMediume816d4e9,
                                        ),
                                        TextSpan(
                                          text: "lbl_day".tr,
                                          style: CustomTextStyles
                                              .titleSmallff6b7280,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Row(
                          children: [
                            _buildImage(
                              image: ImageConstant.imgImage100x88,
                              favorite: ImageConstant.imgFavoriteGray900,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 7.v,
                                bottom: 4.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_quenn_anne_beach".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 14.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgMapPin,
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 2.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_hawaii".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgStarGray600,
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 16.h,
                                          top: 2.v,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_4_8".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 11.v),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_78".tr,
                                          style: CustomTextStyles
                                              .titleMediumff111827_1,
                                        ),
                                        TextSpan(
                                          text: "lbl_day".tr,
                                          style: CustomTextStyles
                                              .titleSmallff6b7280,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
  Widget _buildCard() {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.gray10001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Container(
          height: 180.v,
          width: 327.h,
          decoration: AppDecoration.fillGray10001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage2,
                height: 180.v,
                radius: BorderRadius.circular(
                  16.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Container(
                    height: 180.v,
                    width: 327.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImg1,
                          height: 180.v,
                          radius: BorderRadius.circular(
                            16.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              right: 89.h,
                              bottom: 17.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_awaken_your_travel".tr,
                                  style: CustomTextStyles
                                      .titleMediumOnPrimaryContainer18,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "msg_experience_the_world".tr,
                                  style: CustomTextStyles
                                      .labelLargeOnPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 152.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 23.h),
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
                .homeScrollDownTwoModelObj.value.list3ItemList.value.length,
            itemBuilder: (context, index) {
              List3ItemModel model = controller
                  .homeScrollDownTwoModelObj.value.list3ItemList.value[index];
              return List3ItemWidget(
                model,
              );
            },
          ),
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

  /// Common widget
  Widget _buildTitle({
    required String title,
    required String title1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: CustomTextStyles.titleMedium18.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            title1,
            style: CustomTextStyles.titleMediumGray600Medium.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildImage({
    required String image,
    required String favorite,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 100.v,
        width: 88.h,
        decoration: AppDecoration.gradientGrayToGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomImageView(
              imagePath: image,
              width: 88.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: favorite,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 10.v,
                right: 10.h,
              ),
            ),
          ],
        ),
      ),
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
