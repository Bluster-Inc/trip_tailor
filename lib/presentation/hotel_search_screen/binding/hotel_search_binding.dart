import 'package:trip_tailor/presentation/hotel_search_screen/controller/hotel_search_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelSearchScreen.
///
/// This class ensures that the HotelSearchController is created when the
/// HotelSearchScreen is first loaded.
class HotelSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelSearchController());
  }
}
