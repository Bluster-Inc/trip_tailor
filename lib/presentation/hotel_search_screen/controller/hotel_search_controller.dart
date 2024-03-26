import '../../../core/app_export.dart';
import '../models/hotel_search_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HotelSearchScreen.
///
/// This class manages the state of the HotelSearchScreen, including the
/// current hotelSearchModelObj
class HotelSearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HotelSearchModel> hotelSearchModelObj = HotelSearchModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
