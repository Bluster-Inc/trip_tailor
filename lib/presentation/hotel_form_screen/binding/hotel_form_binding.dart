import 'package:trip_tailor/presentation/hotel_form_screen/controller/hotel_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelFormScreen.
///
/// This class ensures that the HotelFormController is created when the
/// HotelFormScreen is first loaded.
class HotelFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelFormController());
  }
}
