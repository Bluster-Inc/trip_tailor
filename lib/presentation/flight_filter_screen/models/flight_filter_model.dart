import '../../../core/app_export.dart';import 'thumbsup_item_model.dart';/// This class defines the variables used in the [flight_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FlightFilterModel {Rx<List<ThumbsupItemModel>> thumbsupItemList = Rx([ThumbsupItemModel(thumbsUp:ImageConstant.imgThumbsUpPrimary.obs,title: "Early Morning".obs,title1: "00:00 - 04:59".obs),ThumbsupItemModel(thumbsUp:ImageConstant.imgBrightness.obs,title: "Morning".obs,title1: "05:00 - 11:59".obs),ThumbsupItemModel(thumbsUp:ImageConstant.imgThumbsUpPrimary.obs,title: "Afternoon".obs,title1: "12:00 - 17:59".obs),ThumbsupItemModel(thumbsUp:ImageConstant.imgMobilePrimary.obs,title: "Evening".obs,title1: "06:00 - 23:59".obs)]);

 }
