import 'package:trip_tailor/presentation/flight_filter_screen/controller/flight_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightFilterScreen.
///
/// This class ensures that the FlightFilterController is created when the
/// FlightFilterScreen is first loaded.
class FlightFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightFilterController());
  }
}
