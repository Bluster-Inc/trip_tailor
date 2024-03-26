import 'package:trip_tailor/presentation/home_vone_page/home_vone_page.dart';
import 'package:trip_tailor/presentation/my_profile_page/my_profile_page.dart';
import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_eleven.dart';
import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:trip_tailor/widgets/custom_pin_code_text_field.dart';
import 'package:trip_tailor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/home_v2_skeleton_loading_controller.dart';

// ignore_for_file: must_be_immutable
class HomeV2SkeletonLoadingScreen
    extends GetWidget<HomeV2SkeletonLoadingController> {
  const HomeV2SkeletonLoadingScreen({Key? key})
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
              SizedBox(height: 19.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildSearch(),
                      SizedBox(height: 24.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 24.v,
                          width: 160.h,
                          margin: EdgeInsets.only(left: 24.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(0.81, 0.5),
                              end: Alignment(-0.8, 0.5),
                              colors: [
                                appTheme.gray50,
                                appTheme.gray200,
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildFavorite(),
                      SizedBox(height: 24.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 24.v,
                          width: 160.h,
                          margin: EdgeInsets.only(left: 24.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(0.81, 0.5),
                              end: Alignment(-0.8, 0.5),
                              colors: [
                                appTheme.gray50,
                                appTheme.gray200,
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Obx(
                          () => CustomPinCodeTextField(
                            context: Get.context!,
                            controller: controller.otpController.value,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      _buildSkeleton(),
                      SizedBox(height: 24.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 24.v,
                          width: 160.h,
                          margin: EdgeInsets.only(left: 24.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(0.81, 0.5),
                              end: Alignment(-0.8, 0.5),
                              colors: [
                                appTheme.gray50,
                                appTheme.gray200,
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Container(
                        height: 180.v,
                        width: 327.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray10001,
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
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
  Widget _buildFavorite() {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 24.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 240.v,
                width: 200.h,
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.gradientGrayToGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                ),
              ),
              Container(
                height: 240.v,
                width: 200.h,
                margin: EdgeInsets.only(left: 20.h),
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.gradientGrayToGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSkeleton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 16.v,
            width: 64.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.81, 0.5),
                end: Alignment(-0.8, 0.5),
                colors: [
                  appTheme.gray50,
                  appTheme.gray200,
                ],
              ),
            ),
          ),
          Container(
            height: 16.v,
            width: 64.h,
            margin: EdgeInsets.only(left: 21.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.81, 0.5),
                end: Alignment(-0.8, 0.5),
                colors: [
                  appTheme.gray50,
                  appTheme.gray200,
                ],
              ),
            ),
          ),
          Container(
            height: 16.v,
            width: 64.h,
            margin: EdgeInsets.only(left: 21.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.81, 0.5),
                end: Alignment(-0.8, 0.5),
                colors: [
                  appTheme.gray50,
                  appTheme.gray200,
                ],
              ),
            ),
          ),
          Container(
            height: 16.v,
            width: 64.h,
            margin: EdgeInsets.only(left: 21.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.h,
              ),
              gradient: LinearGradient(
                begin: Alignment(0.81, 0.5),
                end: Alignment(-0.8, 0.5),
                colors: [
                  appTheme.gray50,
                  appTheme.gray200,
                ],
              ),
            ),
          ),
        ],
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
