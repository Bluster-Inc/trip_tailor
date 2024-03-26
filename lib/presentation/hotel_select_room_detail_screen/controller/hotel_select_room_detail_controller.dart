import '../../../core/app_export.dart';
import '../models/hotel_select_room_detail_model.dart';

/// A controller class for the HotelSelectRoomDetailScreen.
///
/// This class manages the state of the HotelSelectRoomDetailScreen, including the
/// current hotelSelectRoomDetailModelObj
class HotelSelectRoomDetailController extends GetxController {
  Rx<HotelSelectRoomDetailModel> hotelSelectRoomDetailModelObj =
      HotelSelectRoomDetailModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
