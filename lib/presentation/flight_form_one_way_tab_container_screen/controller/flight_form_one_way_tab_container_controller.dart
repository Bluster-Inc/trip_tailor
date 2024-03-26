import '../../../core/app_export.dart';import '../models/flight_form_one_way_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the FlightFormOneWayTabContainerScreen.
///
/// This class manages the state of the FlightFormOneWayTabContainerScreen, including the
/// current flightFormOneWayTabContainerModelObj
class FlightFormOneWayTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<FlightFormOneWayTabContainerModel> flightFormOneWayTabContainerModelObj = FlightFormOneWayTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
