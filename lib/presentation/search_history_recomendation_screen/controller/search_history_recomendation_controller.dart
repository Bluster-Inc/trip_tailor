import '../../../core/app_export.dart';import '../models/search_history_recomendation_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchHistoryRecomendationScreen.
///
/// This class manages the state of the SearchHistoryRecomendationScreen, including the
/// current searchHistoryRecomendationModelObj
class SearchHistoryRecomendationController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchHistoryRecomendationModel> searchHistoryRecomendationModelObj = SearchHistoryRecomendationModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
