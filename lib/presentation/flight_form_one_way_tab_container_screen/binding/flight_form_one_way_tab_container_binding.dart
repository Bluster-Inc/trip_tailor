import 'package:trip_tailor/presentation/flight_form_one_way_tab_container_screen/controller/flight_form_one_way_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightFormOneWayTabContainerScreen.
///
/// This class ensures that the FlightFormOneWayTabContainerController is created when the
/// FlightFormOneWayTabContainerScreen is first loaded.
class FlightFormOneWayTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightFormOneWayTabContainerController());
  }
}
