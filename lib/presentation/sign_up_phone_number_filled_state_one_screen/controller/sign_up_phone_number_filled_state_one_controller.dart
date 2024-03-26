import '../../../core/app_export.dart';import '../models/sign_up_phone_number_filled_state_one_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpPhoneNumberFilledStateOneScreen.
///
/// This class manages the state of the SignUpPhoneNumberFilledStateOneScreen, including the
/// current signUpPhoneNumberFilledStateOneModelObj
class SignUpPhoneNumberFilledStateOneController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

Rx<SignUpPhoneNumberFilledStateOneModel> signUpPhoneNumberFilledStateOneModelObj = SignUpPhoneNumberFilledStateOneModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); } 
 }
