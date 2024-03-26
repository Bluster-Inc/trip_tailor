import '../../../core/app_export.dart';import '../models/flight_list_detail_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the FlightListDetailTabContainerScreen.
///
/// This class manages the state of the FlightListDetailTabContainerScreen, including the
/// current flightListDetailTabContainerModelObj
class FlightListDetailTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<FlightListDetailTabContainerModel> flightListDetailTabContainerModelObj = FlightListDetailTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 4));

 }
