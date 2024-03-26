import 'package:trip_tailor/presentation/hotel_details_vone_screen/controller/hotel_details_vone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelDetailsVoneScreen.
///
/// This class ensures that the HotelDetailsVoneController is created when the
/// HotelDetailsVoneScreen is first loaded.
class HotelDetailsVoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelDetailsVoneController());
  }
}
