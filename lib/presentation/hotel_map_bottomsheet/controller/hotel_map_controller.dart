import '../../../core/app_export.dart';
import '../models/hotel_map_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HotelMapBottomsheet.
///
/// This class manages the state of the HotelMapBottomsheet, including the
/// current hotelMapModelObj
class HotelMapController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HotelMapModel> hotelMapModelObj = HotelMapModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
