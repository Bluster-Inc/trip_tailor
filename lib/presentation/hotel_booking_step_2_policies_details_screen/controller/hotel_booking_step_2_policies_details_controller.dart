import '../../../core/app_export.dart';
import '../models/hotel_booking_step_2_policies_details_model.dart';

/// A controller class for the HotelBookingStep2PoliciesDetailsScreen.
///
/// This class manages the state of the HotelBookingStep2PoliciesDetailsScreen, including the
/// current hotelBookingStep2PoliciesDetailsModelObj
class HotelBookingStep2PoliciesDetailsController extends GetxController {
  Rx<HotelBookingStep2PoliciesDetailsModel>
      hotelBookingStep2PoliciesDetailsModelObj =
      HotelBookingStep2PoliciesDetailsModel().obs;
}
