import '../../../core/app_export.dart';
import '../models/flight_confirm_to_payment_model.dart';

/// A controller class for the FlightConfirmToPaymentBottomsheet.
///
/// This class manages the state of the FlightConfirmToPaymentBottomsheet, including the
/// current flightConfirmToPaymentModelObj
class FlightConfirmToPaymentController extends GetxController {
  Rx<FlightConfirmToPaymentModel> flightConfirmToPaymentModelObj =
      FlightConfirmToPaymentModel().obs;
}
