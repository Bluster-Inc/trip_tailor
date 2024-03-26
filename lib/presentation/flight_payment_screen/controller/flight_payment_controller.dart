import '../../../core/app_export.dart';import '../models/flight_payment_model.dart';import 'package:flutter/material.dart';/// A controller class for the FlightPaymentScreen.
///
/// This class manages the state of the FlightPaymentScreen, including the
/// current flightPaymentModelObj
class FlightPaymentController extends GetxController {TextEditingController inputController = TextEditingController();

Rx<FlightPaymentModel> flightPaymentModelObj = FlightPaymentModel().obs;

@override void onClose() { super.onClose(); inputController.dispose(); } 
 }
