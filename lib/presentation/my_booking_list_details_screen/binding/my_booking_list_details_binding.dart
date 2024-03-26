import 'package:trip_tailor/presentation/my_booking_list_details_screen/controller/my_booking_list_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyBookingListDetailsScreen.
///
/// This class ensures that the MyBookingListDetailsController is created when the
/// MyBookingListDetailsScreen is first loaded.
class MyBookingListDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBookingListDetailsController());
  }
}
