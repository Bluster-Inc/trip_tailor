import '../../../core/app_export.dart';
import '../models/hotel_detail_overview_model.dart';

/// A controller class for the HotelDetailOverviewPage.
///
/// This class manages the state of the HotelDetailOverviewPage, including the
/// current hotelDetailOverviewModelObj
class HotelDetailOverviewController extends GetxController {
  HotelDetailOverviewController(this.hotelDetailOverviewModelObj);

  Rx<HotelDetailOverviewModel> hotelDetailOverviewModelObj;
}
