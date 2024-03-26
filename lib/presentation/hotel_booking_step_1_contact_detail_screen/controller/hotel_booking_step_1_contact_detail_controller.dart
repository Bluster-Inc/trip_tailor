import '../../../core/app_export.dart';import '../models/hotel_booking_step_1_contact_detail_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the HotelBookingStep1ContactDetailScreen.
///
/// This class manages the state of the HotelBookingStep1ContactDetailScreen, including the
/// current hotelBookingStep1ContactDetailModelObj
class HotelBookingStep1ContactDetailController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<HotelBookingStep1ContactDetailModel> hotelBookingStep1ContactDetailModelObj = HotelBookingStep1ContactDetailModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); phoneNumberController.dispose(); emailController.dispose(); } 
 }
