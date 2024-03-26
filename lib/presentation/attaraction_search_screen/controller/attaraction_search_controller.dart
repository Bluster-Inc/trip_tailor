import '../../../core/app_export.dart';
import '../models/attaraction_search_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AttaractionSearchScreen.
///
/// This class manages the state of the AttaractionSearchScreen, including the
/// current attaractionSearchModelObj
class AttaractionSearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AttaractionSearchModel> attaractionSearchModelObj =
      AttaractionSearchModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
