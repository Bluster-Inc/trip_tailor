import '../../../core/app_export.dart';import 'thumbsup2_item_model.dart';/// This class defines the variables used in the [attaraction_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AttaractionFilterModel {Rx<List<Thumbsup2ItemModel>> thumbsup2ItemList = Rx([Thumbsup2ItemModel(thumbsUp:ImageConstant.imgThumbsUpPrimary.obs,title: "Early Morning".obs,title1: "00:00 - 04:59".obs),Thumbsup2ItemModel(thumbsUp:ImageConstant.imgBrightness.obs,title: "Morning".obs,title1: "05:00 - 11:59".obs),Thumbsup2ItemModel(thumbsUp:ImageConstant.imgThumbsUpPrimary.obs,title: "Afternoon".obs,title1: "12:00 - 17:59".obs),Thumbsup2ItemModel(thumbsUp:ImageConstant.imgMobilePrimary.obs,title: "Evening".obs,title1: "06:00 - 23:59".obs)]);

 }
