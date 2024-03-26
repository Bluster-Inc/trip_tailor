import '../../../core/app_export.dart';import '../models/hotel_select_room_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelSelectRoomScreen.
///
/// This class manages the state of the HotelSelectRoomScreen, including the
/// current hotelSelectRoomModelObj
class HotelSelectRoomController extends GetxController {TextEditingController nightCounterController = TextEditingController();

Rx<HotelSelectRoomModel> hotelSelectRoomModelObj = HotelSelectRoomModel().obs;

Rx<int> sliderIndex = 0.obs;

@override void onClose() { super.onClose(); nightCounterController.dispose(); } 
 }
