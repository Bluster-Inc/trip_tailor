import '../../../core/app_export.dart';import 'title_item_model.dart';/// This class defines the variables used in the [train_select_seat_wagon_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TrainSelectSeatWagonModel {Rx<List<TitleItemModel>> titleItemList = Rx([TitleItemModel(title: "First class".obs,title1: "68 seats available".obs,firstclass:ImageConstant.imgContrastOnprimarycontainer.obs),TitleItemModel(title: "Business class".obs,title1: "68 seats available".obs),TitleItemModel(title: "Coach class".obs,title1: "68 seats available".obs,firstclass:ImageConstant.imgContrastOnprimarycontainer.obs),TitleItemModel(title: "Reserved seating".obs,title1: "68 seats available".obs,firstclass:ImageConstant.imgContrastOnprimarycontainer.obs)]);

 }
