import '../../../core/app_export.dart';import 'list8_item_model.dart';import 'off_item_model.dart';/// This class defines the variables used in the [hotel_special_deals_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelSpecialDealsModel {Rx<List<List8ItemModel>> list8ItemList = Rx([List8ItemModel(image:ImageConstant.imgImg150x240.obs,title: "Mondrian Los Angeles".obs,label: "West Hollywood".obs,label1: "4.5".obs,price: "450".obs),List8ItemModel(image:ImageConstant.imgImg16.obs,title: "Mariposa Los Angeles".obs,price: "240".obs)]);

Rx<List<OffItemModel>> offItemList = Rx([OffItemModel(image:ImageConstant.imgImg17.obs,title: "Travelodge by Wyldham".obs,label: "Los Angeles".obs,label1: "4.8".obs)]);

 }
