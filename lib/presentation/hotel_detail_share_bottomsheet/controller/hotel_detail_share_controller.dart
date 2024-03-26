import '../../../core/app_export.dart';import '../models/hotel_detail_share_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelDetailShareBottomsheet.
///
/// This class manages the state of the HotelDetailShareBottomsheet, including the
/// current hotelDetailShareModelObj
class HotelDetailShareController extends GetxController {TextEditingController copyController = TextEditingController();

TextEditingController copyController1 = TextEditingController();

TextEditingController copyController2 = TextEditingController();

TextEditingController copyController3 = TextEditingController();

Rx<HotelDetailShareModel> hotelDetailShareModelObj = HotelDetailShareModel().obs;

@override void onClose() { super.onClose(); copyController.dispose(); copyController1.dispose(); copyController2.dispose(); copyController3.dispose(); } 
 }
