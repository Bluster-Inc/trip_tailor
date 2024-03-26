import 'package:trip_tailor/presentation/hotel_select_room_screen/controller/hotel_select_room_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelSelectRoomScreen.
///
/// This class ensures that the HotelSelectRoomController is created when the
/// HotelSelectRoomScreen is first loaded.
class HotelSelectRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelSelectRoomController());
  }
}
