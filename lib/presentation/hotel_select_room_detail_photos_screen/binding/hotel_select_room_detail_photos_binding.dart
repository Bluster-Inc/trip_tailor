import 'package:trip_tailor/presentation/hotel_select_room_detail_photos_screen/controller/hotel_select_room_detail_photos_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelSelectRoomDetailPhotosScreen.
///
/// This class ensures that the HotelSelectRoomDetailPhotosController is created when the
/// HotelSelectRoomDetailPhotosScreen is first loaded.
class HotelSelectRoomDetailPhotosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelSelectRoomDetailPhotosController());
  }
}
