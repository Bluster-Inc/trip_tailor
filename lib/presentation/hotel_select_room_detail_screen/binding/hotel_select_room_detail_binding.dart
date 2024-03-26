import 'package:trip_tailor/presentation/hotel_select_room_detail_screen/controller/hotel_select_room_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelSelectRoomDetailScreen.
///
/// This class ensures that the HotelSelectRoomDetailController is created when the
/// HotelSelectRoomDetailScreen is first loaded.
class HotelSelectRoomDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelSelectRoomDetailController());
  }
}
