import '../../../core/app_export.dart';import 'list9_item_model.dart';/// This class defines the variables used in the [hotel_detail_review_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelDetailReviewModel {Rx<List<List9ItemModel>> list9ItemList = Rx([List9ItemModel(good:ImageConstant.imgAvatar.obs,title: "Krishna Barbe".obs,duration: "6 days ago".obs,description: "Great location! Just right across from Crypto Arena and LACC! Also appreciate getting a room ready for me early in the morning!".obs,subtitle: "Was this review helpful?".obs),List9ItemModel(description: "We had a great stay! Hotel is super clean and staff is wonderful!".obs,subtitle: "Was this review helpful?".obs)]);

 }
