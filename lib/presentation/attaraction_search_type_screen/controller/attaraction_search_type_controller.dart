import '../../../core/app_export.dart';
import '../models/attaraction_search_type_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AttaractionSearchTypeScreen.
///
/// This class manages the state of the AttaractionSearchTypeScreen, including the
/// current attaractionSearchTypeModelObj
class AttaractionSearchTypeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AttaractionSearchTypeModel> attaractionSearchTypeModelObj =
      AttaractionSearchTypeModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
