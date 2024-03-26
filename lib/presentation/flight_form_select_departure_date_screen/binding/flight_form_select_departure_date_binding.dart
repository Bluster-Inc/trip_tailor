import 'package:trip_tailor/presentation/flight_form_select_departure_date_screen/controller/flight_form_select_departure_date_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FlightFormSelectDepartureDateScreen.
///
/// This class ensures that the FlightFormSelectDepartureDateController is created when the
/// FlightFormSelectDepartureDateScreen is first loaded.
class FlightFormSelectDepartureDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightFormSelectDepartureDateController());
  }
}
