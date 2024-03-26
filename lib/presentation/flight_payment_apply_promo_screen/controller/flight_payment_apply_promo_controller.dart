import '../../../core/app_export.dart';import '../models/flight_payment_apply_promo_model.dart';import 'package:flutter/material.dart';/// A controller class for the FlightPaymentApplyPromoScreen.
///
/// This class manages the state of the FlightPaymentApplyPromoScreen, including the
/// current flightPaymentApplyPromoModelObj
class FlightPaymentApplyPromoController extends GetxController {TextEditingController inputController = TextEditingController();

Rx<FlightPaymentApplyPromoModel> flightPaymentApplyPromoModelObj = FlightPaymentApplyPromoModel().obs;

@override void onClose() { super.onClose(); inputController.dispose(); } 
 }
