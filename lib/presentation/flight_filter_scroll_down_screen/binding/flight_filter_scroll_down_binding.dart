import 'package:trip_tailor/presentation/flight_filter_scroll_down_screen/controller/flight_filter_scroll_down_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightFilterScrollDownScreen.
///
/// This class ensures that the FlightFilterScrollDownController is created when the
/// FlightFilterScrollDownScreen is first loaded.
class FlightFilterScrollDownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightFilterScrollDownController());
  }
}
