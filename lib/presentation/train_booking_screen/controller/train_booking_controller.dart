import '../../../core/app_export.dart';import '../models/train_booking_model.dart';/// A controller class for the TrainBookingScreen.
///
/// This class manages the state of the TrainBookingScreen, including the
/// current trainBookingModelObj
class TrainBookingController extends GetxController {Rx<TrainBookingModel> trainBookingModelObj = TrainBookingModel().obs;

 }
