import 'package:trip_tailor/presentation/flight_result_list_screen/controller/flight_result_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightResultListScreen.
///
/// This class ensures that the FlightResultListController is created when the
/// FlightResultListScreen is first loaded.
class FlightResultListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightResultListController());
  }
}
