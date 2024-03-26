import 'package:trip_tailor/presentation/hotel_special_deals_tab_container_screen/controller/hotel_special_deals_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelSpecialDealsTabContainerScreen.
///
/// This class ensures that the HotelSpecialDealsTabContainerController is created when the
/// HotelSpecialDealsTabContainerScreen is first loaded.
class HotelSpecialDealsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelSpecialDealsTabContainerController());
  }
}
