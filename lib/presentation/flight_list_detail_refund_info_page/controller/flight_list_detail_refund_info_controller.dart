import '../../../core/app_export.dart';
import '../models/flight_list_detail_refund_info_model.dart';

/// A controller class for the FlightListDetailRefundInfoPage.
///
/// This class manages the state of the FlightListDetailRefundInfoPage, including the
/// current flightListDetailRefundInfoModelObj
class FlightListDetailRefundInfoController extends GetxController {
  FlightListDetailRefundInfoController(this.flightListDetailRefundInfoModelObj);

  Rx<FlightListDetailRefundInfoModel> flightListDetailRefundInfoModelObj;
}
