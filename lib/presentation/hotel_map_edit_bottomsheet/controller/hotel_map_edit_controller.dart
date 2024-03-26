import '../../../core/app_export.dart';import '../models/hotel_map_edit_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelMapEditBottomsheet.
///
/// This class manages the state of the HotelMapEditBottomsheet, including the
/// current hotelMapEditModelObj
class HotelMapEditController extends GetxController {TextEditingController searchController = TextEditingController();

TextEditingController nightCounterController = TextEditingController();

TextEditingController searchController1 = TextEditingController();

Rx<HotelMapEditModel> hotelMapEditModelObj = HotelMapEditModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); nightCounterController.dispose(); searchController1.dispose(); } 
 }
