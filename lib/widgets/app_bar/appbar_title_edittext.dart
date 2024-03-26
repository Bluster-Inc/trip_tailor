import 'package:trip_tailor/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 265.h,
        controller: controller,
        hintText: "lbl_2_night".tr,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgMobile,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineCyanA,
      ),
    );
  }
}
