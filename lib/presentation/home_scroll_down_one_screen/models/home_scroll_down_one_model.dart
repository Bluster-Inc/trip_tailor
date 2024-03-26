import '../../../core/app_export.dart';import 'list1_item_model.dart';import 'list2_item_model.dart';/// This class defines the variables used in the [home_scroll_down_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScrollDownOneModel {Rx<List<List1ItemModel>> list1ItemList = Rx([List1ItemModel(quennAnneBeach:ImageConstant.imgImage100x88.obs,quennAnneBeach1:ImageConstant.imgFavoriteGray900.obs,title: "Quenn Anne Beach".obs,label: "Hawaii".obs,label1: "4.8".obs),List1ItemModel(quennAnneBeach:ImageConstant.imgImg100x88.obs,quennAnneBeach1:ImageConstant.imgFavoriteRedA200.obs,title: "Tour with Sunset in Oia".obs,label: "Santorini".obs,label1: "4.9".obs)]);

Rx<List<List2ItemModel>> list2ItemList = Rx([List2ItemModel(dubaiUEA:ImageConstant.imgImage120x193.obs,title: "Dubai, UEA".obs),List2ItemModel(dubaiUEA:ImageConstant.imgImg120x193.obs,title: "Santorini, Greece".obs)]);

 }
