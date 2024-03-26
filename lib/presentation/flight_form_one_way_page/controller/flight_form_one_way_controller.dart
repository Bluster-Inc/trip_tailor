import '../../../core/app_export.dart';
import '../models/flight_form_one_way_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FlightFormOneWayPage.
///
/// This class manages the state of the FlightFormOneWayPage, including the
/// current flightFormOneWayModelObj
class FlightFormOneWayController extends GetxController {
  FlightFormOneWayController(this.flightFormOneWayModelObj);

  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  Rx<FlightFormOneWayModel> flightFormOneWayModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    searchController1.dispose();
  }
}
