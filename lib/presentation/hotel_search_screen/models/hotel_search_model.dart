import '../../../core/app_export.dart';import 'list6_item_model.dart';import 'grid_item_model.dart';/// This class defines the variables used in the [hotel_search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelSearchModel {Rx<List<List6ItemModel>> list6ItemList = Rx([List6ItemModel(image:ImageConstant.imgImg9.obs,title: "The Westin St. Francis".obs,label: "Union Square, San Francisco".obs),List6ItemModel(image:ImageConstant.imgImg10.obs,title: "Palace Hotel".obs,label: "Financial District, California".obs),List6ItemModel(image:ImageConstant.imgImg11.obs,title: "Beacon Grand Luxury".obs,label: "Union Square, San Francisco".obs)]);

Rx<List<GridItemModel>> gridItemList = Rx([GridItemModel(santorini:ImageConstant.imgImg88x156.obs,title: "Santorini".obs),GridItemModel(santorini:ImageConstant.imgImg88x155.obs,title: "Bali".obs),GridItemModel(santorini:ImageConstant.imgImg12.obs,title: "Dubai".obs),GridItemModel(santorini:ImageConstant.imgImg13.obs,title: "Zurich".obs)]);

 }
