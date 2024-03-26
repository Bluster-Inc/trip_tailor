import '../../../core/app_export.dart';import 'frame1_item_model.dart';/// This class defines the variables used in the [search_type_autocomplete_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTypeAutocompleteModel {Rx<List<Frame1ItemModel>> frame1ItemList = Rx([Frame1ItemModel(luxuryApartment:ImageConstant.imgImg5.obs,title: "Luxury Apartment".obs,label: "California, United States".obs),Frame1ItemModel(luxuryApartment:ImageConstant.imgImg6.obs,title: "Hilton Catedral Apartment".obs,label: "Los Angeles, United States".obs),Frame1ItemModel(luxuryApartment:ImageConstant.imgImg7.obs,title: "CBD Apartment".obs,label: "Melbourne, Australia".obs),Frame1ItemModel(luxuryApartment:ImageConstant.imgImg8.obs,title: "Apartmento Reserva".obs,label: "Santa Marta, Italy".obs)]);

 }
