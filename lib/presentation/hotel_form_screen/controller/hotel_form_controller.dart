import '../../../core/app_export.dart';import '../models/hotel_form_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelFormScreen.
///
/// This class manages the state of the HotelFormScreen, including the
/// current hotelFormModelObj
class HotelFormController extends GetxController {TextEditingController searchController = TextEditingController();

TextEditingController nightCounterController = TextEditingController();

TextEditingController searchController1 = TextEditingController();

Rx<HotelFormModel> hotelFormModelObj = HotelFormModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); nightCounterController.dispose(); searchController1.dispose(); } 
 }
