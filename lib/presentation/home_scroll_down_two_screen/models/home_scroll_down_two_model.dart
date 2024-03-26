import '../../../core/app_export.dart';import 'list3_item_model.dart';/// This class defines the variables used in the [home_scroll_down_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScrollDownTwoModel {Rx<List<List3ItemModel>> list3ItemList = Rx([List3ItemModel(dubaiUEA:ImageConstant.imgImage3.obs,title: "Dubai, UEA".obs),List3ItemModel(dubaiUEA:ImageConstant.imgImg2.obs,title: "Santorini, Greece".obs)]);

 }
