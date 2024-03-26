import 'package:trip_tailor/presentation/hotel_details_vtwo_screen/controller/hotel_details_vtwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelDetailsVtwoScreen.
///
/// This class ensures that the HotelDetailsVtwoController is created when the
/// HotelDetailsVtwoScreen is first loaded.
class HotelDetailsVtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelDetailsVtwoController());
  }
}
