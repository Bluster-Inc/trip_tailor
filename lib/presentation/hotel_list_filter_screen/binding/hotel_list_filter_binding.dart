import 'package:trip_tailor/presentation/hotel_list_filter_screen/controller/hotel_list_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelListFilterScreen.
///
/// This class ensures that the HotelListFilterController is created when the
/// HotelListFilterScreen is first loaded.
class HotelListFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelListFilterController());
  }
}
