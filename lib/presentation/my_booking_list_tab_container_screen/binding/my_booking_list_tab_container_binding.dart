import 'package:trip_tailor/presentation/my_booking_list_tab_container_screen/controller/my_booking_list_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyBookingListTabContainerScreen.
///
/// This class ensures that the MyBookingListTabContainerController is created when the
/// MyBookingListTabContainerScreen is first loaded.
class MyBookingListTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBookingListTabContainerController());
  }
}
