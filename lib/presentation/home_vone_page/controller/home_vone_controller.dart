import '../../../core/app_export.dart';
import '../models/home_vone_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeVonePage.
///
/// This class manages the state of the HomeVonePage, including the
/// current homeVoneModelObj
class HomeVoneController extends GetxController {
  HomeVoneController(this.homeVoneModelObj);

  TextEditingController searchController = TextEditingController();

  TextEditingController skeletonController = TextEditingController();

  TextEditingController skeletonController1 = TextEditingController();

  TextEditingController skeletonController2 = TextEditingController();

  Rx<HomeVoneModel> homeVoneModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    skeletonController.dispose();
    skeletonController1.dispose();
    skeletonController2.dispose();
  }
}
