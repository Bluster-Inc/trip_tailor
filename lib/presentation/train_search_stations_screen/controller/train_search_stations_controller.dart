import '../../../core/app_export.dart';
import '../models/train_search_stations_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrainSearchStationsScreen.
///
/// This class manages the state of the TrainSearchStationsScreen, including the
/// current trainSearchStationsModelObj
class TrainSearchStationsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<TrainSearchStationsModel> trainSearchStationsModelObj =
      TrainSearchStationsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
