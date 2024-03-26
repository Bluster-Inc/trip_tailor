import '../../../core/app_export.dart';
import '../models/flight_form_select_departure_date_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A controller class for the FlightFormSelectDepartureDateScreen.
///
/// This class manages the state of the FlightFormSelectDepartureDateScreen, including the
/// current flightFormSelectDepartureDateModelObj
class FlightFormSelectDepartureDateController extends GetxController {
  Rx<FlightFormSelectDepartureDateModel> flightFormSelectDepartureDateModelObj =
      FlightFormSelectDepartureDateModel().obs;

  Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);

  Rx<List<DateTime?>> selectedDatesFromCalendar2 = Rx([]);
}
