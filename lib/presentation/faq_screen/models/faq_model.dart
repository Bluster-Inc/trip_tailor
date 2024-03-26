import '../../../core/app_export.dart';import 'category2_item_model.dart';/// This class defines the variables used in the [faq_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FaqModel {Rx<List<Category2ItemModel>> category2ItemList = Rx([Category2ItemModel(globe:ImageConstant.imgGlobeGray900.obs,title: "General".obs),Category2ItemModel(globe:ImageConstant.imgLockGray900.obs,title: "Account".obs),Category2ItemModel(globe:ImageConstant.imgAirplaneGray900.obs,title: "Flights".obs),Category2ItemModel(globe:ImageConstant.imgGridGray900.obs,title: "All topics".obs)]);

 }
