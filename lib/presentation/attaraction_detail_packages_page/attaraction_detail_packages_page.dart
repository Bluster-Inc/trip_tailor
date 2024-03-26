import 'widgets/select1_item_widget.dart';
import 'models/select1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/attaraction_detail_packages_controller.dart';
import 'models/attaraction_detail_packages_model.dart';

class AttaractionDetailPackagesPage extends StatelessWidget {
  AttaractionDetailPackagesPage({Key? key})
      : super(
          key: key,
        );

  AttaractionDetailPackagesController controller = Get.put(
      AttaractionDetailPackagesController(
          AttaractionDetailPackagesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 29.v),
                SizedBox(
                  height: 653.v,
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
                                "lbl_packages".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 17.v),
                              _buildSelect(),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 98.v,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(bottom: 42.v),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 1.11),
                              end: Alignment(0.5, 0.08),
                              colors: [
                                theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0),
                              ],
                            ),
                          ),
                        ),
                      ),
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
  Widget _buildSelect() {
    return Obx(
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
        itemCount: controller.attaractionDetailPackagesModelObj.value
            .select1ItemList.value.length,
        itemBuilder: (context, index) {
          Select1ItemModel model = controller.attaractionDetailPackagesModelObj
              .value.select1ItemList.value[index];
          return Select1ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
