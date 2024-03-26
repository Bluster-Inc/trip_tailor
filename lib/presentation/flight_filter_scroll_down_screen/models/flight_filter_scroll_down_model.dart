import '../../../core/app_export.dart';import 'list13_item_model.dart';import 'thumbsup1_item_model.dart';/// This class defines the variables used in the [flight_filter_scroll_down_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FlightFilterScrollDownModel {Rx<List<List13ItemModel>> list13ItemList = Rx([List13ItemModel(title: "Seat choice included".obs),List13ItemModel(title: "Hand baggage included".obs),List13ItemModel(title: "No cancel fee".obs),List13ItemModel(title: "No change fee".obs)]);

Rx<List<Thumbsup1ItemModel>> thumbsup1ItemList = Rx([Thumbsup1ItemModel(thumbsUp:ImageConstant.imgThumbsUpPrimary.obs,title: "Early Morning".obs,title1: "00:00 - 04:59".obs),Thumbsup1ItemModel(thumbsUp:ImageConstant.imgBrightness.obs,title: "Morning".obs,title1: "05:00 - 11:59".obs),Thumbsup1ItemModel(thumbsUp:ImageConstant.imgThumbsUpPrimary.obs,title: "Afternoon".obs,title1: "12:00 - 17:59".obs),Thumbsup1ItemModel(thumbsUp:ImageConstant.imgMobilePrimary.obs,title: "Evening".obs,title1: "06:00 - 23:59".obs)]);

 }
