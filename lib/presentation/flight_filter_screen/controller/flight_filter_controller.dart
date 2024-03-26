import '../../../core/app_export.dart';import '../models/flight_filter_model.dart';import 'package:flutter/material.dart';/// A controller class for the FlightFilterScreen.
///
/// This class manages the state of the FlightFilterScreen, including the
/// current flightFilterModelObj
class FlightFilterController extends GetxController {TextEditingController distanceController = TextEditingController();

TextEditingController distanceController1 = TextEditingController();

Rx<FlightFilterModel> flightFilterModelObj = FlightFilterModel().obs;

@override void onClose() { super.onClose(); distanceController.dispose(); distanceController1.dispose(); } 
 }
