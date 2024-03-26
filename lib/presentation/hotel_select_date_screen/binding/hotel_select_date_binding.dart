import 'package:trip_tailor/presentation/hotel_select_date_screen/controller/hotel_select_date_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelSelectDateScreen.
///
/// This class ensures that the HotelSelectDateController is created when the
/// HotelSelectDateScreen is first loaded.
class HotelSelectDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelSelectDateController());
  }
}
