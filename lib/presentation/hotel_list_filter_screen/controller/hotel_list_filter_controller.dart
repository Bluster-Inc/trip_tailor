import '../../../core/app_export.dart';import '../models/hotel_list_filter_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelListFilterScreen.
///
/// This class manages the state of the HotelListFilterScreen, including the
/// current hotelListFilterModelObj
class HotelListFilterController extends GetxController {TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

Rx<HotelListFilterModel> hotelListFilterModelObj = HotelListFilterModel().obs;

@override void onClose() { super.onClose(); priceController.dispose(); priceController1.dispose(); } 
 }
