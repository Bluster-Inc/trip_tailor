import '../../../core/app_export.dart';import '../models/hotel_details_vtwo_model.dart';/// A controller class for the HotelDetailsVtwoScreen.
///
/// This class manages the state of the HotelDetailsVtwoScreen, including the
/// current hotelDetailsVtwoModelObj
class HotelDetailsVtwoController extends GetxController {Rx<HotelDetailsVtwoModel> hotelDetailsVtwoModelObj = HotelDetailsVtwoModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
