import 'package:trip_tailor/presentation/hotel_list_screen/controller/hotel_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelListScreen.
///
/// This class ensures that the HotelListController is created when the
/// HotelListScreen is first loaded.
class HotelListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelListController());
  }
}
