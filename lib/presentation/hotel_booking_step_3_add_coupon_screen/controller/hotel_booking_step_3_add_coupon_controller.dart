import '../../../core/app_export.dart';import '../models/hotel_booking_step_3_add_coupon_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelBookingStep3AddCouponScreen.
///
/// This class manages the state of the HotelBookingStep3AddCouponScreen, including the
/// current hotelBookingStep3AddCouponModelObj
class HotelBookingStep3AddCouponController extends GetxController {TextEditingController inputController = TextEditingController();

Rx<HotelBookingStep3AddCouponModel> hotelBookingStep3AddCouponModelObj = HotelBookingStep3AddCouponModel().obs;

@override void onClose() { super.onClose(); inputController.dispose(); } 
 }
