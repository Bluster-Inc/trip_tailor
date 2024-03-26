import '../../../core/app_export.dart';import '../models/hotel_booking_step_1_add_special_request_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelBookingStep1AddSpecialRequestScreen.
///
/// This class manages the state of the HotelBookingStep1AddSpecialRequestScreen, including the
/// current hotelBookingStep1AddSpecialRequestModelObj
class HotelBookingStep1AddSpecialRequestController extends GetxController {TextEditingController itemController = TextEditingController();

TextEditingController itemController1 = TextEditingController();

TextEditingController inputController = TextEditingController();

Rx<HotelBookingStep1AddSpecialRequestModel> hotelBookingStep1AddSpecialRequestModelObj = HotelBookingStep1AddSpecialRequestModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); itemController.dispose(); itemController1.dispose(); inputController.dispose(); } 
onSelected(dynamic value) { for (var element in hotelBookingStep1AddSpecialRequestModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} hotelBookingStep1AddSpecialRequestModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in hotelBookingStep1AddSpecialRequestModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} hotelBookingStep1AddSpecialRequestModelObj.value.dropdownItemList1.refresh(); } 
 }
