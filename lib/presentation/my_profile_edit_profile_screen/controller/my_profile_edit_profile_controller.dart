import '../../../core/app_export.dart';import '../models/my_profile_edit_profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the MyProfileEditProfileScreen.
///
/// This class manages the state of the MyProfileEditProfileScreen, including the
/// current myProfileEditProfileModelObj
class MyProfileEditProfileController extends GetxController {TextEditingController inputController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController phoneNumberController1 = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController2 = TextEditingController();

Rx<MyProfileEditProfileModel> myProfileEditProfileModelObj = MyProfileEditProfileModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

Rx<Country> selectedCountry1 = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); inputController.dispose(); phoneNumberController.dispose(); phoneNumberController1.dispose(); emailController.dispose(); phoneNumberController2.dispose(); } 
onSelected(dynamic value) { for (var element in myProfileEditProfileModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} myProfileEditProfileModelObj.value.dropdownItemList.refresh(); } 
 }
