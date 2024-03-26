import 'package:trip_tailor/presentation/search_type_autocomplete_screen/controller/search_type_autocomplete_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchTypeAutocompleteScreen.
///
/// This class ensures that the SearchTypeAutocompleteController is created when the
/// SearchTypeAutocompleteScreen is first loaded.
class SearchTypeAutocompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchTypeAutocompleteController());
  }
}
