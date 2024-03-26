import '../../../core/app_export.dart';import '../models/hotel_details_vone_model.dart';/// A controller class for the HotelDetailsVoneScreen.
///
/// This class manages the state of the HotelDetailsVoneScreen, including the
/// current hotelDetailsVoneModelObj
class HotelDetailsVoneController extends GetxController {Rx<HotelDetailsVoneModel> hotelDetailsVoneModelObj = HotelDetailsVoneModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
