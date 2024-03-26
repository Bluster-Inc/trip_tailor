import '../models/list7_item_model.dart';
import '../controller/hotel_search_type_autocomplete_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List7ItemWidget extends StatelessWidget {
  List7ItemWidget(
    this.list7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List7ItemModel list7ItemModelObj;

  var controller = Get.find<HotelSearchTypeAutocompleteController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedinGray900,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      list7ItemModelObj.label!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Obx(
                    () => Text(
                      list7ItemModelObj.label1!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
