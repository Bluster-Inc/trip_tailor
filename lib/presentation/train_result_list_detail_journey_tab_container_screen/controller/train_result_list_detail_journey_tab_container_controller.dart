import '../../../core/app_export.dart';import '../models/train_result_list_detail_journey_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the TrainResultListDetailJourneyTabContainerScreen.
///
/// This class manages the state of the TrainResultListDetailJourneyTabContainerScreen, including the
/// current trainResultListDetailJourneyTabContainerModelObj
class TrainResultListDetailJourneyTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<TrainResultListDetailJourneyTabContainerModel> trainResultListDetailJourneyTabContainerModelObj = TrainResultListDetailJourneyTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
