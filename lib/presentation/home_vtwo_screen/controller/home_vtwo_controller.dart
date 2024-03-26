import '../../../core/app_export.dart';
import '../models/home_vtwo_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeVtwoScreen.
///
/// This class manages the state of the HomeVtwoScreen, including the
/// current homeVtwoModelObj
class HomeVtwoController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeVtwoModel> homeVtwoModelObj = HomeVtwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
