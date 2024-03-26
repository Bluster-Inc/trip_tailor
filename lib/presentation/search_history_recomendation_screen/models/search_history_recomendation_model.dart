import '../../../core/app_export.dart';import 'list5_item_model.dart';import 'hiltoncatedral_item_model.dart';/// This class defines the variables used in the [search_history_recomendation_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchHistoryRecomendationModel {Rx<List<List5ItemModel>> list5ItemList = Rx([List5ItemModel(image:ImageConstant.imgImg72x72.obs,title: "Apeiron Blue Santorini".obs,label: "Santorini, Greece".obs),List5ItemModel(image:ImageConstant.imgImg3.obs,title: "Kavalari Luxury Resort".obs,label: "California, United States".obs)]);

Rx<List<HiltoncatedralItemModel>> hiltoncatedralItemList = Rx([HiltoncatedralItemModel(hiltonCatedral:ImageConstant.imgImg180x154.obs,title: "Hilton Catedral".obs,label: "Los Angeles".obs),HiltoncatedralItemModel(hiltonCatedral:ImageConstant.imgImg180x153.obs,title: "Luxury Apartment".obs,label: "California".obs)]);

 }
