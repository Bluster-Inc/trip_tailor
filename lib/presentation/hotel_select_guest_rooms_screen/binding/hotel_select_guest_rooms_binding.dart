import 'package:trip_tailor/presentation/hotel_select_guest_rooms_screen/controller/hotel_select_guest_rooms_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelSelectGuestRoomsScreen.
///
/// This class ensures that the HotelSelectGuestRoomsController is created when the
/// HotelSelectGuestRoomsScreen is first loaded.
class HotelSelectGuestRoomsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelSelectGuestRoomsController());
  }
}
