import '../../../core/app_export.dart';
import '../models/hotel_select_night_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HotelSelectNightScreen.
///
/// This class manages the state of the HotelSelectNightScreen, including the
/// current hotelSelectNightModelObj
class HotelSelectNightController extends GetxController {
  TextEditingController nightCounterController = TextEditingController();

  Rx<HotelSelectNightModel> hotelSelectNightModelObj =
      HotelSelectNightModel().obs;

  Rx<bool> flexiblenight = false.obs;

  @override
  void onClose() {
    super.onClose();
    nightCounterController.dispose();
  }
}
