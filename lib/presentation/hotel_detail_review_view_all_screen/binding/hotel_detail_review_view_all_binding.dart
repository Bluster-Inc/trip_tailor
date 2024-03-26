import 'package:trip_tailor/presentation/hotel_detail_review_view_all_screen/controller/hotel_detail_review_view_all_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelDetailReviewViewAllScreen.
///
/// This class ensures that the HotelDetailReviewViewAllController is created when the
/// HotelDetailReviewViewAllScreen is first loaded.
class HotelDetailReviewViewAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelDetailReviewViewAllController());
  }
}
