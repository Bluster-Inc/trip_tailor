import '../../../core/app_export.dart';import '../models/search_empty_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchEmptyScreen.
///
/// This class manages the state of the SearchEmptyScreen, including the
/// current searchEmptyModelObj
class SearchEmptyController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchEmptyModel> searchEmptyModelObj = SearchEmptyModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
