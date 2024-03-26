import 'img2_item_model.dart';import '../../../core/app_export.dart';import 'category1_item_model.dart';/// This class defines the variables used in the [hotel_select_room_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelSelectRoomDetailModel {Rx<List<Img2ItemModel>> img2ItemList = Rx(List.generate(1,(index) => Img2ItemModel()));

Rx<List<Category1ItemModel>> category1ItemList = Rx([Category1ItemModel(bedroom:ImageConstant.imgBedPrimary.obs,title: "Bedroom".obs,title1: "1 King bed".obs),Category1ItemModel(bedroom:ImageConstant.imgUsersPrimary.obs,title: "Guest".obs,title1: "2 Guest".obs),Category1ItemModel(bedroom:ImageConstant.imgTelevisionPrimary.obs,title: "Size".obs,title1: "30 sqm".obs)]);

 }
