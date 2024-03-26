import '../../../core/app_export.dart';
import '../models/flight_list_detail_reschedule_info_model.dart';

/// A controller class for the FlightListDetailRescheduleInfoPage.
///
/// This class manages the state of the FlightListDetailRescheduleInfoPage, including the
/// current flightListDetailRescheduleInfoModelObj
class FlightListDetailRescheduleInfoController extends GetxController {
  FlightListDetailRescheduleInfoController(
      this.flightListDetailRescheduleInfoModelObj);

  Rx<FlightListDetailRescheduleInfoModel>
      flightListDetailRescheduleInfoModelObj;
}
