import 'package:trip_tailor/presentation/hotel_search_type_autocomplete_screen/controller/hotel_search_type_autocomplete_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelSearchTypeAutocompleteScreen.
///
/// This class ensures that the HotelSearchTypeAutocompleteController is created when the
/// HotelSearchTypeAutocompleteScreen is first loaded.
class HotelSearchTypeAutocompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelSearchTypeAutocompleteController());
  }
}
