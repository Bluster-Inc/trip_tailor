import 'package:trip_tailor/presentation/hotel_select_night_screen/controller/hotel_select_night_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelSelectNightScreen.
///
/// This class ensures that the HotelSelectNightController is created when the
/// HotelSelectNightScreen is first loaded.
class HotelSelectNightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelSelectNightController());
  }
}
