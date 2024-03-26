import 'package:trip_tailor/presentation/hotel_detail_facility_screen/controller/hotel_detail_facility_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelDetailFacilityScreen.
///
/// This class ensures that the HotelDetailFacilityController is created when the
/// HotelDetailFacilityScreen is first loaded.
class HotelDetailFacilityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelDetailFacilityController());
  }
}
