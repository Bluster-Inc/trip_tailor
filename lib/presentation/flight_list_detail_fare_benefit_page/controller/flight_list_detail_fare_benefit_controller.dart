import '../../../core/app_export.dart';
import '../models/flight_list_detail_fare_benefit_model.dart';

/// A controller class for the FlightListDetailFareBenefitPage.
///
/// This class manages the state of the FlightListDetailFareBenefitPage, including the
/// current flightListDetailFareBenefitModelObj
class FlightListDetailFareBenefitController extends GetxController {
  FlightListDetailFareBenefitController(
      this.flightListDetailFareBenefitModelObj);

  Rx<FlightListDetailFareBenefitModel> flightListDetailFareBenefitModelObj;
}
