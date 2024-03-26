import '../../../core/app_export.dart';
import '../models/hotel_special_deals_model.dart';

/// A controller class for the HotelSpecialDealsPage.
///
/// This class manages the state of the HotelSpecialDealsPage, including the
/// current hotelSpecialDealsModelObj
class HotelSpecialDealsController extends GetxController {
  HotelSpecialDealsController(this.hotelSpecialDealsModelObj);

  Rx<HotelSpecialDealsModel> hotelSpecialDealsModelObj;
}
