import 'widgets/list8_item_widget.dart';
import 'models/list8_item_model.dart';
import 'widgets/off_item_widget.dart';
import 'models/off_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/hotel_special_deals_controller.dart';
import 'models/hotel_special_deals_model.dart';

class HotelSpecialDealsPage extends StatelessWidget {
  HotelSpecialDealsPage({Key? key})
      : super(
          key: key,
        );

  HotelSpecialDealsController controller =
      Get.put(HotelSpecialDealsController(HotelSpecialDealsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Column(
                  children: [
                    _buildList(),
                    SizedBox(height: 29.v),
                    _buildOff(),
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
  Widget _buildList() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 252.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 55.0.h,
                child: Divider(
                  height: 3.v,
                  thickness: 3.v,
                  color: appTheme.gray600,
                  indent: 10.0.h,
                  endIndent: 10.0.h,
                ),
              );
            },
            itemCount: controller
                .hotelSpecialDealsModelObj.value.list8ItemList.value.length,
            itemBuilder: (context, index) {
              List8ItemModel model = controller
                  .hotelSpecialDealsModelObj.value.list8ItemList.value[index];
              return List8ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOff() {
    return SizedBox(
      height: 261.v,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_recommendation_for".tr,
                    style: CustomTextStyles.titleMedium18,
                  ),
                  SizedBox(height: 19.v),
                  Obx(
                    () => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: 20.v,
                        );
                      },
                      itemCount: controller.hotelSpecialDealsModelObj.value
                          .offItemList.value.length,
                      itemBuilder: (context, index) {
                        OffItemModel model = controller
                            .hotelSpecialDealsModelObj
                            .value
                            .offItemList
                            .value[index];
                        return OffItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 98.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 19.v),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 1.11),
                  end: Alignment(0.5, 0.08),
                  colors: [
                    theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    theme.colorScheme.onPrimaryContainer.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
