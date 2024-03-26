import 'package:trip_tailor/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/attaraction_detail_reviews_controller.dart';
import 'models/attaraction_detail_reviews_model.dart';

class AttaractionDetailReviewsPage extends StatelessWidget {
  AttaractionDetailReviewsPage({Key? key})
      : super(
          key: key,
        );

  AttaractionDetailReviewsController controller = Get.put(
      AttaractionDetailReviewsController(AttaractionDetailReviewsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 26.v),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgStarGray900,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 4.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_4_9_5_0".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              margin: EdgeInsets.only(
                                left: 8.h,
                                top: 8.v,
                                bottom: 9.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.gray900,
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_1_249_review".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildItem(),
                    SizedBox(height: 23.v),
                    _buildItem1(),
                    SizedBox(height: 23.v),
                    _buildItem2(),
                    SizedBox(height: 22.v),
                    _buildItem3(),
                    SizedBox(height: 22.v),
                    _buildItem4(),
                    SizedBox(height: 35.v),
                    _buildWriteAReview(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildItem() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_excellent2".tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Container(
              height: 6.v,
              width: 142.h,
              decoration: BoxDecoration(
                color: appTheme.lightBlue50,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.85,
                  backgroundColor: appTheme.lightBlue50,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_500".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItem1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_good2".tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Container(
              height: 6.v,
              width: 142.h,
              decoration: BoxDecoration(
                color: appTheme.lightBlue50,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.59,
                  backgroundColor: appTheme.lightBlue50,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "lbl_2402".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItem2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_okay".tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
            child: Container(
              height: 6.v,
              width: 142.h,
              decoration: BoxDecoration(
                color: appTheme.lightBlue50,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.75,
                  backgroundColor: appTheme.lightBlue50,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl_1502".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItem3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_poor".tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Container(
              height: 6.v,
              width: 142.h,
              decoration: BoxDecoration(
                color: appTheme.lightBlue50,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.46,
                  backgroundColor: appTheme.lightBlue50,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: Text(
              "lbl_40".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItem4() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_terible".tr,
            style: theme.textTheme.titleSmall,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Container(
              height: 6.v,
              width: 142.h,
              decoration: BoxDecoration(
                color: appTheme.lightBlue50,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.28,
                  backgroundColor: appTheme.lightBlue50,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              "lbl_10".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteAReview() {
    return SizedBox(
      height: 400.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.outlineGray200.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAvatar,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_krishna_barbe".tr,
                                    style: CustomTextStyles.titleSmallGray900,
                                  ),
                                  SizedBox(height: 7.v),
                                  Text(
                                    "lbl_6_days_ago".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgStarPrimary,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(bottom: 22.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                bottom: 21.v,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_4_52".tr,
                                      style:
                                          CustomTextStyles.titleSmalle816d4e9,
                                    ),
                                    TextSpan(
                                      text: "lbl_good".tr,
                                      style:
                                          CustomTextStyles.titleSmallff6b7280,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 17.v),
                        Container(
                          width: 287.h,
                          margin: EdgeInsets.only(right: 8.h),
                          child: Text(
                            "msg_excelent_everything".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall!.copyWith(
                              height: 1.70,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildFooter(
                          subtitle: "msg_was_this_review".tr,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Container(
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.outlineGray2003.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAvatar40x40,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 243.h,
                                    child: Row(
                                      children: [
                                        Text(
                                          "lbl_rodolfo_goode".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray900,
                                        ),
                                        Spacer(),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgStarPrimary,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_3_02".tr,
                                                  style: CustomTextStyles
                                                      .titleSmalle816d4e9,
                                                ),
                                                TextSpan(
                                                  text: "lbl_bad".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallff6b7280,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 7.v),
                                  Text(
                                    "lbl_6_days_ago".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 17.v),
                        Container(
                          width: 280.h,
                          margin: EdgeInsets.only(right: 15.h),
                          child: Text(
                            "msg_way_to_many_people".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall!.copyWith(
                              height: 1.70,
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        _buildFooter(
                          subtitle: "msg_was_this_review".tr,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 90.v),
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              decoration: AppDecoration.outlineGrayF,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 12.v),
                  CustomOutlinedButton(
                    text: "lbl_write_a_review".tr,
                    buttonStyle: CustomButtonStyles.outlineGray,
                    buttonTextStyle: CustomTextStyles.titleMediumGray90001,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFooter({required String subtitle}) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgIkeOutlined,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            subtitle,
            style: CustomTextStyles.labelLargeBluegray30001_1.copyWith(
              color: appTheme.blueGray30001,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgDotsVertical,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }
}
