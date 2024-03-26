import '../../../core/app_export.dart';
import '../models/train_result_list_detail_journey_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrainResultListDetailJourneyPage.
///
/// This class manages the state of the TrainResultListDetailJourneyPage, including the
/// current trainResultListDetailJourneyModelObj
class TrainResultListDetailJourneyController extends GetxController {
  TrainResultListDetailJourneyController(
      this.trainResultListDetailJourneyModelObj);

  TextEditingController durationController = TextEditingController();

  Rx<TrainResultListDetailJourneyModel> trainResultListDetailJourneyModelObj;

  @override
  void onClose() {
    super.onClose();
    durationController.dispose();
  }
}
