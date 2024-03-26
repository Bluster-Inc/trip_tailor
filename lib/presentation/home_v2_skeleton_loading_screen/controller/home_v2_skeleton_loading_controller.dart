import '../../../core/app_export.dart';
import '../models/home_v2_skeleton_loading_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeV2SkeletonLoadingScreen.
///
/// This class manages the state of the HomeV2SkeletonLoadingScreen, including the
/// current homeV2SkeletonLoadingModelObj
class HomeV2SkeletonLoadingController extends GetxController with CodeAutoFill {
  TextEditingController searchController = TextEditingController();

  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<HomeV2SkeletonLoadingModel> homeV2SkeletonLoadingModelObj =
      HomeV2SkeletonLoadingModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
