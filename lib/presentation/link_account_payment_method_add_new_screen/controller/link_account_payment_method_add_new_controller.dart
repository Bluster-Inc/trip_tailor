import '../../../core/app_export.dart';import '../models/link_account_payment_method_add_new_model.dart';import 'package:flutter/material.dart';/// A controller class for the LinkAccountPaymentMethodAddNewScreen.
///
/// This class manages the state of the LinkAccountPaymentMethodAddNewScreen, including the
/// current linkAccountPaymentMethodAddNewModelObj
class LinkAccountPaymentMethodAddNewController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<LinkAccountPaymentMethodAddNewModel> linkAccountPaymentMethodAddNewModelObj = LinkAccountPaymentMethodAddNewModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); nameController.dispose(); dateController.dispose(); cvvController.dispose(); } 
onSelected(dynamic value) { for (var element in linkAccountPaymentMethodAddNewModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} linkAccountPaymentMethodAddNewModelObj.value.dropdownItemList.refresh(); } 
 }
