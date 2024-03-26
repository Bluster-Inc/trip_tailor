import 'package:trip_tailor/widgets/app_bar/custom_app_bar.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_twelve.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_title_image.dart';
import 'package:trip_tailor/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'package:trip_tailor/widgets/custom_text_form_field.dart';
import 'widgets/list_item_widget.dart';
import 'models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/home_vone_controller.dart';
import 'models/home_vone_model.dart';

class HomeVonePage extends StatelessWidget {
  HomeVonePage({Key? key})
      : super(
          key: key,
        );

  HomeVoneController controller =
      Get.put(HomeVoneController(HomeVoneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "msg_where_are_you_going".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                ),
              ),
              SizedBox(height: 16.v),
              _buildCategories(),
              SizedBox(height: 27.v),
              _buildTitle(),
              SizedBox(height: 16.v),
              _buildList(),
              SizedBox(height: 29.v),
              _buildTitle1(),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Row(
                    children: [
                      Card(
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
                                imagePath: ImageConstant.imgImage100x88,
                                width: 88.h,
                                radius: BorderRadius.circular(
                                  12.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgFavoriteGray900,
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
                                  margin: EdgeInsets.symmetric(vertical: 2.v),
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
                            SizedBox(height: 15.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_78".tr,
                                    style:
                                        CustomTextStyles.titleMediumff111827_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_day".tr,
                                    style: CustomTextStyles.titleSmallff6b7280,
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
              ),
            ],
          ),
        ),
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
  Widget _buildSkeleton() {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        width: 97.h,
        controller: controller.skeletonController,
        hintText: "lbl_flights".tr,
        hintStyle: CustomTextStyles.titleSmallGray900_2,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 9.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgAirplane,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 11.v,
          right: 16.h,
          bottom: 11.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSkeleton1() {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        width: 94.h,
        controller: controller.skeletonController1,
        hintText: "lbl_trains".tr,
        hintStyle: CustomTextStyles.titleSmallGray900_2,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 9.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgThumbsupGray600,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 40.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 11.v,
          right: 16.h,
          bottom: 11.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSkeleton2() {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        width: 27.h,
        controller: controller.skeletonController2,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildCategories() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 40.v,
              width: 95.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40.v,
                      width: 95.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                        border: Border.all(
                          color: appTheme.gray200,
                          width: 1.h,
                          strokeAlign: strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: Text(
                        "lbl_hotels".tr,
                        style: CustomTextStyles.titleSmallGray900_2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _buildSkeleton(),
            _buildSkeleton1(),
            _buildSkeleton2(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_choice_for_you".tr,
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              "lbl_view_more".tr,
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 241.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 20.h,
              );
            },
            itemCount:
                controller.homeVoneModelObj.value.listItemList.value.length,
            itemBuilder: (context, index) {
              ListItemModel model =
                  controller.homeVoneModelObj.value.listItemList.value[index];
              return ListItemWidget(
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
}
