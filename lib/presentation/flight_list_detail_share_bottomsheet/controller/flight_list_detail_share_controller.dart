import '../../../core/app_export.dart';import '../models/flight_list_detail_share_model.dart';import 'package:flutter/material.dart';/// A controller class for the FlightListDetailShareBottomsheet.
///
/// This class manages the state of the FlightListDetailShareBottomsheet, including the
/// current flightListDetailShareModelObj
class FlightListDetailShareController extends GetxController {TextEditingController copyController = TextEditingController();

TextEditingController copyController1 = TextEditingController();

TextEditingController copyController2 = TextEditingController();

TextEditingController copyController3 = TextEditingController();

Rx<FlightListDetailShareModel> flightListDetailShareModelObj = FlightListDetailShareModel().obs;

@override void onClose() { super.onClose(); copyController.dispose(); copyController1.dispose(); copyController2.dispose(); copyController3.dispose(); } 
 }
