import '../../../core/app_export.dart';
import '../models/search_type_autocomplete_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTypeAutocompleteScreen.
///
/// This class manages the state of the SearchTypeAutocompleteScreen, including the
/// current searchTypeAutocompleteModelObj
class SearchTypeAutocompleteController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchTypeAutocompleteModel> searchTypeAutocompleteModelObj =
      SearchTypeAutocompleteModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
