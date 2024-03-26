import '../../../core/app_export.dart';
import '../models/hotel_detail_review_model.dart';

/// A controller class for the HotelDetailReviewPage.
///
/// This class manages the state of the HotelDetailReviewPage, including the
/// current hotelDetailReviewModelObj
class HotelDetailReviewController extends GetxController {
  HotelDetailReviewController(this.hotelDetailReviewModelObj);

  Rx<HotelDetailReviewModel> hotelDetailReviewModelObj;
}
