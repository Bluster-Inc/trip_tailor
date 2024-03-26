import '../../../core/app_export.dart';
import '../models/hotel_select_date_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A controller class for the HotelSelectDateScreen.
///
/// This class manages the state of the HotelSelectDateScreen, including the
/// current hotelSelectDateModelObj
class HotelSelectDateController extends GetxController {
  Rx<HotelSelectDateModel> hotelSelectDateModelObj = HotelSelectDateModel().obs;

  Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);

  Rx<List<DateTime?>> selectedDatesFromCalendar2 = Rx([]);
}
