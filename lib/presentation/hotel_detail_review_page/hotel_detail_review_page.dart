import 'widgets/list9_item_widget.dart';
import 'models/list9_item_model.dart';
import 'package:trip_tailor/widgets/custom_outlined_button.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_detail_review_controller.dart';
import 'models/hotel_detail_review_model.dart';

class HotelDetailReviewPage extends StatelessWidget {
  HotelDetailReviewPage({Key? key})
      : super(
          key: key,
        );

  HotelDetailReviewController controller =
      Get.put(HotelDetailReviewController(HotelDetailReviewModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "lbl_review".tr,
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  _buildList(),
                  SizedBox(height: 24.v),
                  CustomOutlinedButton(
                    height: 48.v,
                    text: "lbl_see_all_review".tr,
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                    buttonStyle: CustomButtonStyles.outlineGrayTL12,
                    buttonTextStyle: CustomTextStyles.titleSmallGray90001,
                  ),
                  SizedBox(height: 17.v),
                  _buildBottomBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
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
              .hotelDetailReviewModelObj.value.list9ItemList.value.length,
          itemBuilder: (context, index) {
            List9ItemModel model = controller
                .hotelDetailReviewModelObj.value.list9ItemList.value[index];
            return List9ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.outlineGrayF,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_120".tr,
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
            width: 159.h,
            text: "lbl_select_a_room".tr,
            margin: EdgeInsets.only(top: 12.v),
          ),
        ],
      ),
    );
  }
}
