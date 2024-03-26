import '../../../core/app_export.dart';
import '../models/flight_list_detail_model.dart';

/// A controller class for the FlightListDetailPage.
///
/// This class manages the state of the FlightListDetailPage, including the
/// current flightListDetailModelObj
class FlightListDetailController extends GetxController {
  FlightListDetailController(this.flightListDetailModelObj);

  Rx<FlightListDetailModel> flightListDetailModelObj;
}
