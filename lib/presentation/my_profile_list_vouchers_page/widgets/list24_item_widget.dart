import '../models/list24_item_model.dart';
import '../controller/my_profile_list_vouchers_controller.dart';
import 'package:trip_tailor/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class List24ItemWidget extends StatelessWidget {
  List24ItemWidget(
    this.list24ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List24ItemModel list24ItemModelObj;

  var controller = Get.find<MyProfileListVouchersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBluegray1006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.v),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL24,
              child: CustomImageView(
                imagePath: ImageConstant.imgCalculatorOnprimarycontainer,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: SizedBox(
              height: 66.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                color: appTheme.blueGray100,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    list24ItemModelObj.title!.value,
                    style: CustomTextStyles
                        .labelMediumPlusJakartaSansBluegray30001,
                  ),
                ),
                SizedBox(height: 10.v),
                Obx(
                  () => Text(
                    list24ItemModelObj.title1!.value,
                    style: CustomTextStyles
                        .titleMediumPlusJakartaSansBluegray30001,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    list24ItemModelObj.month!.value,
                    style: CustomTextStyles
                        .labelMediumPlusJakartaSansBluegray30001_1,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 51.v),
            child: Obx(
              () => Text(
                list24ItemModelObj.title2!.value,
                style: CustomTextStyles.labelMediumPlusJakartaSansCyan100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
