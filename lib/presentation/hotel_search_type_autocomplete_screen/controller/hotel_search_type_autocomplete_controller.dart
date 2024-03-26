import '../../../core/app_export.dart';
import '../models/hotel_search_type_autocomplete_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HotelSearchTypeAutocompleteScreen.
///
/// This class manages the state of the HotelSearchTypeAutocompleteScreen, including the
/// current hotelSearchTypeAutocompleteModelObj
class HotelSearchTypeAutocompleteController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HotelSearchTypeAutocompleteModel> hotelSearchTypeAutocompleteModelObj =
      HotelSearchTypeAutocompleteModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
