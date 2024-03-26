import 'widgets/list23_item_widget.dart';
import 'models/list23_item_model.dart';
import 'widgets/list24_item_widget.dart';
import 'models/list24_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/my_profile_list_vouchers_controller.dart';
import 'models/my_profile_list_vouchers_model.dart';

class MyProfileListVouchersPage extends StatelessWidget {
  MyProfileListVouchersPage({Key? key})
      : super(
          key: key,
        );

  MyProfileListVouchersController controller = Get.put(
      MyProfileListVouchersController(MyProfileListVouchersModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Column(
                children: [
                  _buildList(),
                  SizedBox(height: 28.v),
                  _buildLabel(),
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
              .myProfileListVouchersModelObj.value.list23ItemList.value.length,
          itemBuilder: (context, index) {
            List23ItemModel model = controller.myProfileListVouchersModelObj
                .value.list23ItemList.value[index];
            return List23ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLabel() {
    return SizedBox(
      height: 271.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_coupon_history".tr,
                    style: CustomTextStyles.titleMedium18_1,
                  ),
                  SizedBox(height: 16.v),
                  Obx(
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
                      itemCount: controller.myProfileListVouchersModelObj.value
                          .list24ItemList.value.length,
                      itemBuilder: (context, index) {
                        List24ItemModel model = controller
                            .myProfileListVouchersModelObj
                            .value
                            .list24ItemList
                            .value[index];
                        return List24ItemWidget(
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
