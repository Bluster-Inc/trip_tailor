import '../../../core/app_export.dart';import '../models/flight_sort_model.dart';/// A controller class for the FlightSortBottomsheet.
///
/// This class manages the state of the FlightSortBottomsheet, including the
/// current flightSortModelObj
class FlightSortController extends GetxController {Rx<FlightSortModel> flightSortModelObj = FlightSortModel().obs;

 }
