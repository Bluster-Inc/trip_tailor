import 'package:trip_tailor/presentation/hotel_detail_overview_tab_container_screen/controller/hotel_detail_overview_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelDetailOverviewTabContainerScreen.
///
/// This class ensures that the HotelDetailOverviewTabContainerController is created when the
/// HotelDetailOverviewTabContainerScreen is first loaded.
class HotelDetailOverviewTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelDetailOverviewTabContainerController());
  }
}
