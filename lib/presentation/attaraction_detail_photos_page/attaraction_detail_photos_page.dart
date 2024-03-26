import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'widgets/img4_item_widget.dart';
import 'models/img4_item_model.dart';
import 'package:trip_tailor/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/attaraction_detail_photos_controller.dart';
import 'models/attaraction_detail_photos_model.dart';

class AttaractionDetailPhotosPage extends StatelessWidget {
  AttaractionDetailPhotosPage({Key? key})
      : super(
          key: key,
        );

  AttaractionDetailPhotosController controller = Get.put(
      AttaractionDetailPhotosController(AttaractionDetailPhotosModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Column(
                  children: [
                    _buildImg(),
                    SizedBox(height: 16.v),
                    _buildWidget(),
                    SizedBox(height: 48.v),
                    _buildHeader(),
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
  Widget _buildImg() {
    return Obx(
      () => StaggeredGridView.countBuilder(
        shrinkWrap: true,
        primary: false,
        crossAxisCount: 4,
        crossAxisSpacing: 16.h,
        mainAxisSpacing: 16.h,
        staggeredTileBuilder: (index) {
          return StaggeredTile.fit(2);
        },
        itemCount: controller
            .attaractionDetailPhotosModelObj.value.img4ItemList.value.length,
        itemBuilder: (context, index) {
          Img4ItemModel model = controller
              .attaractionDetailPhotosModelObj.value.img4ItemList.value[index];
          return Img4ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage22,
            width: 156.h,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage23,
            height: 150.v,
            radius: BorderRadius.circular(
              12.h,
            ),
            margin: EdgeInsets.only(
              left: 16.h,
              bottom: 70.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
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
                        text: "lbl_255".tr,
                        style: CustomTextStyles.titleLargeff111827,
                      ),
                      TextSpan(
                        text: "lbl_adult2".tr,
                        style: CustomTextStyles.titleSmallff111827,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 6.v),
                Text(
                  "msg_include_taxes_and".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 159.h,
            text: "lbl_find_a_ticket".tr,
            margin: EdgeInsets.only(top: 12.v),
          ),
        ],
      ),
    );
  }
}
