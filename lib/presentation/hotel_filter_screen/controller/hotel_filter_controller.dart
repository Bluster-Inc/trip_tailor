import '../../../core/app_export.dart';import '../models/hotel_filter_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the HotelFilterScreen.
///
/// This class manages the state of the HotelFilterScreen, including the
/// current hotelFilterModelObj
class HotelFilterController extends GetxController with  CodeAutoFill {TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<HotelFilterModel> hotelFilterModelObj = HotelFilterModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onClose() { super.onClose(); priceController.dispose(); priceController1.dispose(); } 
 }
