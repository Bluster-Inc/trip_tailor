import '../../../core/app_export.dart';import '../models/flight_booking_model.dart';/// A controller class for the FlightBookingScreen.
///
/// This class manages the state of the FlightBookingScreen, including the
/// current flightBookingModelObj
class FlightBookingController extends GetxController {Rx<FlightBookingModel> flightBookingModelObj = FlightBookingModel().obs;

 }
