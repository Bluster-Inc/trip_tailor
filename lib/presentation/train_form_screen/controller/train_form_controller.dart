import '../../../core/app_export.dart';import '../models/train_form_model.dart';import 'package:flutter/material.dart';/// A controller class for the TrainFormScreen.
///
/// This class manages the state of the TrainFormScreen, including the
/// current trainFormModelObj
class TrainFormController extends GetxController {TextEditingController searchController = TextEditingController();

TextEditingController searchController1 = TextEditingController();

Rx<TrainFormModel> trainFormModelObj = TrainFormModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

@override void onClose() { super.onClose(); searchController.dispose(); searchController1.dispose(); } 
 }
