import '../../../core/app_export.dart';
import '../models/faq_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FaqScreen.
///
/// This class manages the state of the FaqScreen, including the
/// current faqModelObj
class FaqController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<FaqModel> faqModelObj = FaqModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
