import '../../../core/app_export.dart';import '../models/flight_result_list_model.dart';/// A controller class for the FlightResultListScreen.
///
/// This class manages the state of the FlightResultListScreen, including the
/// current flightResultListModelObj
class FlightResultListController extends GetxController {Rx<FlightResultListModel> flightResultListModelObj = FlightResultListModel().obs;

 }
