import '../../../core/app_export.dart';
import '../models/my_booking_empty_model.dart';

/// A controller class for the MyBookingEmptyPage.
///
/// This class manages the state of the MyBookingEmptyPage, including the
/// current myBookingEmptyModelObj
class MyBookingEmptyController extends GetxController {
  MyBookingEmptyController(this.myBookingEmptyModelObj);

  Rx<MyBookingEmptyModel> myBookingEmptyModelObj;
}
