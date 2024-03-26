import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/img2_item_widget.dart';
import 'models/img2_item_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/category1_item_widget.dart';
import 'models/category1_item_model.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_select_room_detail_controller.dart';

// ignore_for_file: must_be_immutable
class HotelSelectRoomDetailScreen
    extends GetWidget<HotelSelectRoomDetailController> {
  const HotelSelectRoomDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildImg(),
                SizedBox(height: 28.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "msg_premium_room_1".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Row(
                      children: [
                        Text(
                          "msg_fully_refundable".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgAlertCircle,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            bottom: 2.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 26.v),
                _buildCategory(),
                SizedBox(height: 25.v),
                SizedBox(
                  height: 750.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_overview".tr,
                                style: CustomTextStyles.titleMedium18,
                              ),
                              SizedBox(height: 12.v),
                              SizedBox(
                                width: 324.h,
                                child: Text(
                                  "msg_stretch_out_on_the".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                    height: 1.70,
                                  ),
                                ),
                              ),
                              SizedBox(height: 7.v),
                              Row(
                                children: [
                                  Text(
                                    "lbl_read_more".tr,
                                    style: CustomTextStyles.titleSmallPrimary,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckPrimary,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.only(left: 2.h),
                                  ),
                                ],
                              ),
                              SizedBox(height: 27.v),
                              _buildTitle(),
                              SizedBox(height: 19.v),
                              _buildItem(
                                title: "lbl_bedroom".tr,
                                title1: "msg_air_conditioning".tr,
                              ),
                              SizedBox(height: 16.v),
                              _buildItem(
                                title: "lbl_bathroom".tr,
                                title1: "msg_dressing_gowns".tr,
                              ),
                              SizedBox(height: 16.v),
                              _buildItem(
                                title: "lbl_entertainment".tr,
                                title1: "msg_55_inch_flat_screen".tr,
                              ),
                              SizedBox(height: 16.v),
                              _buildItem(
                                title: "lbl_food_drink".tr,
                                title1: "msg_coffee_tea_maker".tr,
                              ),
                              SizedBox(height: 16.v),
                              _buildItem(
                                title: "lbl_more".tr,
                                title1: "msg_desk_electrical".tr,
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildBottomBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImg() {
    return SizedBox(
      height: 330.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => CarouselSlider.builder(
              options: CarouselOptions(
                height: 330.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  controller.sliderIndex.value = index;
                },
              ),
              itemCount: controller.hotelSelectRoomDetailModelObj.value
                  .img2ItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                Img2ItemModel model = controller.hotelSelectRoomDetailModelObj
                    .value.img2ItemList.value[index];
                return Img2ItemWidget(
                  model,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Obx(
              () => Container(
                height: 10.v,
                margin: EdgeInsets.only(bottom: 16.v),
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller.hotelSelectRoomDetailModelObj.value
                      .img2ItemList.value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor:
                        theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    dotColor:
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
                    activeDotScale: 1.6666666666666667,
                    dotHeight: 6.v,
                    dotWidth: 6.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategory() {
    return SizedBox(
      height: 92.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount: controller.hotelSelectRoomDetailModelObj.value
              .category1ItemList.value.length,
          itemBuilder: (context, index) {
            Category1ItemModel model = controller.hotelSelectRoomDetailModelObj
                .value.category1ItemList.value[index];
            return Category1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Container(
      width: 327.h,
      padding: EdgeInsets.symmetric(vertical: 2.v),
      decoration: AppDecoration.outlineGray2001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.v),
          Text(
            "lbl_room_amenities".tr,
            style: CustomTextStyles.titleMedium18_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 146.v,
          bottom: 536.v,
        ),
        decoration: AppDecoration.outlineGrayF,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 17.v,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_150".tr,
                          style: CustomTextStyles.titleLargeff111827,
                        ),
                        TextSpan(
                          text: "lbl_night".tr,
                          style: CustomTextStyles.titleSmallff111827,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "msg_include_taxes_and".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              width: 150.h,
              text: "lbl_reserve".tr,
              margin: EdgeInsets.only(top: 12.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildItem({
    required String title,
    required String title1,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 48.v),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(10.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTablerBath,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              children: [
                SizedBox(
                  width: 271.h,
                  child: Text(
                    title,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallGray900.copyWith(
                      color: appTheme.gray900,
                      height: 1.70,
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 271.h,
                  child: Text(
                    title1,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.gray600,
                      height: 1.70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
