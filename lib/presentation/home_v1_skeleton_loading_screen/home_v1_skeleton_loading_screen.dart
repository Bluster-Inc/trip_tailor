import 'package:trip_tailor/presentation/home_vone_page/home_vone_page.dart';
import 'package:trip_tailor/presentation/my_profile_page/my_profile_page.dart';
import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_twelve.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title_image.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'package:trip_tailor/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/home_v1_skeleton_loading_controller.dart';

// ignore_for_file: must_be_immutable
class HomeV1SkeletonLoadingScreen
    extends GetWidget<HomeV1SkeletonLoadingController> {
  const HomeV1SkeletonLoadingScreen({Key? key})
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: CustomSearchView(
                    controller: controller.searchController,
                    hintText: "msg_where_are_you_going".tr,
                    hintStyle: theme.textTheme.bodyLarge!,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildChip(),
              SizedBox(height: 32.v),
              Container(
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
              SizedBox(height: 16.v),
              _buildFavorite(),
              SizedBox(height: 34.v),
              _buildSkeletonTitle(),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  right: 79.h,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.v,
                      width: 96.h,
                      padding: EdgeInsets.all(12.h),
                      decoration: AppDecoration.gradientGrayToGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        alignment: Alignment.topRight,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 8.v,
                        bottom: 8.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20.v,
                            width: 146.h,
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
                          SizedBox(height: 12.v),
                          SizedBox(
                            width: 160.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgMapPin,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                ),
                                Container(
                                  height: 14.v,
                                  width: 80.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.h,
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
                                CustomImageView(
                                  imagePath: ImageConstant.imgStarGray600,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                ),
                                Container(
                                  height: 14.v,
                                  width: 20.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.h,
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
                          ),
                          SizedBox(height: 16.v),
                          Container(
                            height: 20.v,
                            width: 68.h,
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
                    ),
                  ],
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
  Widget _buildChip() {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 24.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgChip,
                height: 40.v,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgChip,
                height: 40.v,
                radius: BorderRadius.circular(
                  10.h,
                ),
                margin: EdgeInsets.only(left: 12.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgChip,
                height: 40.v,
                radius: BorderRadius.circular(
                  10.h,
                ),
                margin: EdgeInsets.only(left: 12.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgChip,
                height: 40.v,
                radius: BorderRadius.circular(
                  10.h,
                ),
                margin: EdgeInsets.only(left: 12.h),
              ),
            ],
          ),
        ),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160.v,
                    width: 240.h,
                    padding: EdgeInsets.all(16.h),
                    decoration: AppDecoration.gradientGrayToGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.topRight,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Container(
                    height: 20.v,
                    width: 202.h,
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
                  SizedBox(height: 12.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMapPin,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Container(
                        height: 14.v,
                        width: 80.h,
                        margin: EdgeInsets.only(left: 8.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            4.h,
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
                  SizedBox(height: 16.v),
                  SizedBox(
                    width: 240.h,
                    child: Row(
                      children: [
                        Container(
                          height: 20.v,
                          width: 116.h,
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
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgStar,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                        Container(
                          height: 14.v,
                          width: 20.h,
                          margin: EdgeInsets.only(
                            left: 8.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4.h,
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
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160.v,
                      width: 240.h,
                      padding: EdgeInsets.all(16.h),
                      decoration: AppDecoration.gradientGrayToGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.topRight,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Container(
                      height: 20.v,
                      width: 202.h,
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
                    SizedBox(height: 12.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMapPin,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                        Container(
                          height: 14.v,
                          width: 80.h,
                          margin: EdgeInsets.only(left: 8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4.h,
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
                    SizedBox(height: 16.v),
                    SizedBox(
                      width: 240.h,
                      child: Row(
                        children: [
                          Container(
                            height: 20.v,
                            width: 116.h,
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
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgStar,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          Container(
                            height: 14.v,
                            width: 20.h,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              top: 3.v,
                              bottom: 3.v,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                4.h,
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
  Widget _buildSkeletonTitle() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSkeleton,
              height: 50.v,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightGray600,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 13.v),
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
