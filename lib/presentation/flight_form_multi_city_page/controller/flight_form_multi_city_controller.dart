import '../../../core/app_export.dart';
import '../models/flight_form_multi_city_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FlightFormMultiCityPage.
///
/// This class manages the state of the FlightFormMultiCityPage, including the
/// current flightFormMultiCityModelObj
class FlightFormMultiCityController extends GetxController {
  FlightFormMultiCityController(this.flightFormMultiCityModelObj);

  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  Rx<FlightFormMultiCityModel> flightFormMultiCityModelObj;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    searchController1.dispose();
  }
}
