import '../../../core/app_export.dart';import '../models/attaraction_filter_model.dart';import 'package:flutter/material.dart';/// A controller class for the AttaractionFilterScreen.
///
/// This class manages the state of the AttaractionFilterScreen, including the
/// current attaractionFilterModelObj
class AttaractionFilterController extends GetxController {TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

Rx<AttaractionFilterModel> attaractionFilterModelObj = AttaractionFilterModel().obs;

@override void onClose() { super.onClose(); priceController.dispose(); priceController1.dispose(); } 
 }
