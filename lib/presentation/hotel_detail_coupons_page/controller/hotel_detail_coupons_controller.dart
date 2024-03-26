import '../../../core/app_export.dart';
import '../models/hotel_detail_coupons_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HotelDetailCouponsPage.
///
/// This class manages the state of the HotelDetailCouponsPage, including the
/// current hotelDetailCouponsModelObj
class HotelDetailCouponsController extends GetxController {
  HotelDetailCouponsController(this.hotelDetailCouponsModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HotelDetailCouponsModel> hotelDetailCouponsModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
