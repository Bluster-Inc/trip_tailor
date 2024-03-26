import '../../../core/app_export.dart';
import '../models/flight_form_round_trip_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FlightFormRoundTripPage.
///
/// This class manages the state of the FlightFormRoundTripPage, including the
/// current flightFormRoundTripModelObj
class FlightFormRoundTripController extends GetxController {
  FlightFormRoundTripController(this.flightFormRoundTripModelObj);

  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  Rx<FlightFormRoundTripModel> flightFormRoundTripModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    searchController1.dispose();
  }
}
