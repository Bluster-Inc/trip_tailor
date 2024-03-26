import 'package:trip_tailor/presentation/hotel_detail_map_screen/controller/hotel_detail_map_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelDetailMapScreen.
///
/// This class ensures that the HotelDetailMapController is created when the
/// HotelDetailMapScreen is first loaded.
class HotelDetailMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelDetailMapController());
  }
}
