import '../../../core/app_export.dart';import '../models/hotel_booking_step_3_payment_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelBookingStep3PaymentScreen.
///
/// This class manages the state of the HotelBookingStep3PaymentScreen, including the
/// current hotelBookingStep3PaymentModelObj
class HotelBookingStep3PaymentController extends GetxController {TextEditingController inputController = TextEditingController();

Rx<HotelBookingStep3PaymentModel> hotelBookingStep3PaymentModelObj = HotelBookingStep3PaymentModel().obs;

@override void onClose() { super.onClose(); inputController.dispose(); } 
 }
