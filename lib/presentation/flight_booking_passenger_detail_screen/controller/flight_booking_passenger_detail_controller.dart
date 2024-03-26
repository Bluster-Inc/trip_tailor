import '../../../core/app_export.dart';import '../models/flight_booking_passenger_detail_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the FlightBookingPassengerDetailScreen.
///
/// This class manages the state of the FlightBookingPassengerDetailScreen, including the
/// current flightBookingPassengerDetailModelObj
class FlightBookingPassengerDetailController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<FlightBookingPassengerDetailModel> flightBookingPassengerDetailModelObj = FlightBookingPassengerDetailModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); fullNameController.dispose(); phoneNumberController.dispose(); emailController.dispose(); } 
onSelected(dynamic value) { for (var element in flightBookingPassengerDetailModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} flightBookingPassengerDetailModelObj.value.dropdownItemList.refresh(); } 
 }
