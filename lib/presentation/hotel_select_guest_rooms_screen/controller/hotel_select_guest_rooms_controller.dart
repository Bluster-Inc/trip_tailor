import '../../../core/app_export.dart';
import '../models/hotel_select_guest_rooms_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HotelSelectGuestRoomsScreen.
///
/// This class manages the state of the HotelSelectGuestRoomsScreen, including the
/// current hotelSelectGuestRoomsModelObj
class HotelSelectGuestRoomsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HotelSelectGuestRoomsModel> hotelSelectGuestRoomsModelObj =
      HotelSelectGuestRoomsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
