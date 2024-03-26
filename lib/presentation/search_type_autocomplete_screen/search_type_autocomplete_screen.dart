import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'widgets/frame1_item_widget.dart';
import 'models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/search_type_autocomplete_controller.dart';

// ignore_for_file: must_be_immutable
class SearchTypeAutocompleteScreen
    extends GetWidget<SearchTypeAutocompleteController> {
  const SearchTypeAutocompleteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 56.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_apertment".tr,
                hintStyle: CustomTextStyles.titleSmallGray900_2,
                contentPadding: EdgeInsets.symmetric(vertical: 15.v),
                borderDecoration: SearchViewStyleHelper.outlineGrayTL12,
              ),
              SizedBox(height: 36.v),
              _buildFrame(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(right: 36.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: controller
              .searchTypeAutocompleteModelObj.value.frame1ItemList.value.length,
          itemBuilder: (context, index) {
            Frame1ItemModel model = controller.searchTypeAutocompleteModelObj
                .value.frame1ItemList.value[index];
            return Frame1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
