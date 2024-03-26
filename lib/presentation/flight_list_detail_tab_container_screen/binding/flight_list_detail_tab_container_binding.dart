import 'package:trip_tailor/presentation/flight_list_detail_tab_container_screen/controller/flight_list_detail_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightListDetailTabContainerScreen.
///
/// This class ensures that the FlightListDetailTabContainerController is created when the
/// FlightListDetailTabContainerScreen is first loaded.
class FlightListDetailTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightListDetailTabContainerController());
  }
}
