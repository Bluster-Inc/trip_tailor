import '../../../core/app_export.dart';import '../models/train_payment_model.dart';import 'package:flutter/material.dart';/// A controller class for the TrainPaymentScreen.
///
/// This class manages the state of the TrainPaymentScreen, including the
/// current trainPaymentModelObj
class TrainPaymentController extends GetxController {TextEditingController inputController = TextEditingController();

Rx<TrainPaymentModel> trainPaymentModelObj = TrainPaymentModel().obs;

@override void onClose() { super.onClose(); inputController.dispose(); } 
 }
