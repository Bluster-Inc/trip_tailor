import 'package:trip_tailor/presentation/hotel_detail_coupons_details_screen/controller/hotel_detail_coupons_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelDetailCouponsDetailsScreen.
///
/// This class ensures that the HotelDetailCouponsDetailsController is created when the
/// HotelDetailCouponsDetailsScreen is first loaded.
class HotelDetailCouponsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelDetailCouponsDetailsController());
  }
}
