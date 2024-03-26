import '../../../core/app_export.dart';import '../models/sign_up_phone_number_filled_state_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpPhoneNumberFilledStateScreen.
///
/// This class manages the state of the SignUpPhoneNumberFilledStateScreen, including the
/// current signUpPhoneNumberFilledStateModelObj
class SignUpPhoneNumberFilledStateController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

Rx<SignUpPhoneNumberFilledStateModel> signUpPhoneNumberFilledStateModelObj = SignUpPhoneNumberFilledStateModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); } 
 }
