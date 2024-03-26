import 'package:trip_tailor/presentation/search_history_recomendation_screen/controller/search_history_recomendation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchHistoryRecomendationScreen.
///
/// This class ensures that the SearchHistoryRecomendationController is created when the
/// SearchHistoryRecomendationScreen is first loaded.
class SearchHistoryRecomendationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchHistoryRecomendationController());
  }
}
