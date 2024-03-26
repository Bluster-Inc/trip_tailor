import 'package:trip_tailor/presentation/hotel_filter_screen/controller/hotel_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelFilterScreen.
///
/// This class ensures that the HotelFilterController is created when the
/// HotelFilterScreen is first loaded.
class HotelFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelFilterController());
  }
}
