import '../../../core/app_export.dart';import '../models/train_select_traveler_details_model.dart';import 'package:flutter/material.dart';/// A controller class for the TrainSelectTravelerDetailsScreen.
///
/// This class manages the state of the TrainSelectTravelerDetailsScreen, including the
/// current trainSelectTravelerDetailsModelObj
class TrainSelectTravelerDetailsController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

Rx<TrainSelectTravelerDetailsModel> trainSelectTravelerDetailsModelObj = TrainSelectTravelerDetailsModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); fullNameController.dispose(); zipcodeController.dispose(); } 
onSelected(dynamic value) { for (var element in trainSelectTravelerDetailsModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} trainSelectTravelerDetailsModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in trainSelectTravelerDetailsModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} trainSelectTravelerDetailsModelObj.value.dropdownItemList1.refresh(); } 
 }
