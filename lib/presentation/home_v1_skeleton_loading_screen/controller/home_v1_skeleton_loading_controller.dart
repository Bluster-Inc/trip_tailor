import '../../../core/app_export.dart';
import '../models/home_v1_skeleton_loading_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeV1SkeletonLoadingScreen.
///
/// This class manages the state of the HomeV1SkeletonLoadingScreen, including the
/// current homeV1SkeletonLoadingModelObj
class HomeV1SkeletonLoadingController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeV1SkeletonLoadingModel> homeV1SkeletonLoadingModelObj =
      HomeV1SkeletonLoadingModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
