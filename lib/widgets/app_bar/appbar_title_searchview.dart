import 'package:trip_tailor/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
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
      child: CustomSearchView(
        width: 287.h,
        controller: controller,
        hintText: "msg_where_are_you_going".tr,
        hintStyle: theme.textTheme.bodyMedium!,
        borderDecoration: SearchViewStyleHelper.outlineGrayTL121,
      ),
    );
  }
}
