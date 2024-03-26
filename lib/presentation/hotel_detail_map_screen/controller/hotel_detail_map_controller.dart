import '../../../core/app_export.dart';
import '../models/hotel_detail_map_model.dart';

/// A controller class for the HotelDetailMapScreen.
///
/// This class manages the state of the HotelDetailMapScreen, including the
/// current hotelDetailMapModelObj
class HotelDetailMapController extends GetxController {
  Rx<HotelDetailMapModel> hotelDetailMapModelObj = HotelDetailMapModel().obs;
}
