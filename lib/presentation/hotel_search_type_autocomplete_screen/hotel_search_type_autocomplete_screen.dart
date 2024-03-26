import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'widgets/list7_item_widget.dart';
import 'models/list7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_search_type_autocomplete_controller.dart';

// ignore_for_file: must_be_immutable
class HotelSearchTypeAutocompleteScreen
    extends GetWidget<HotelSearchTypeAutocompleteController> {
  const HotelSearchTypeAutocompleteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTopBar(),
              SizedBox(height: 68.v),
              CustomElevatedButton(
                text: "msg_use_current_location".tr,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSave,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 27.v),
              _buildList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopBar() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_location".tr,
            style: CustomTextStyles.titleSmallCyanA100Bold,
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Expanded(
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "lbl_los".tr,
                  contentPadding: EdgeInsets.only(
                    top: 14.v,
                    right: 30.h,
                    bottom: 14.v,
                  ),
                  borderDecoration: SearchViewStyleHelper.outlineCyanATL14,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
                child: Text(
                  "lbl_clear".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
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
          right: 124.h,
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
                height: 30.v,
              );
            },
            itemCount: controller.hotelSearchTypeAutocompleteModelObj.value
                .list7ItemList.value.length,
            itemBuilder: (context, index) {
              List7ItemModel model = controller
                  .hotelSearchTypeAutocompleteModelObj
                  .value
                  .list7ItemList
                  .value[index];
              return List7ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
