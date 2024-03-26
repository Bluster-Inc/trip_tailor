import '../../../core/app_export.dart';import 'frame_item_model.dart';import 'category_item_model.dart';/// This class defines the variables used in the [home_vtwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeVtwoModel {Rx<List<FrameItemModel>> frameItemList = Rx([FrameItemModel(stPeachtree:ImageConstant.imgImage240x200.obs,title: "The Ritz Carlton".obs,label: "St Peachtree".obs),FrameItemModel(stPeachtree:ImageConstant.imgImage1.obs,title: "Quenn Anne Beach".obs,label: "Hawaii".obs)]);

Rx<List<CategoryItemModel>> categoryItemList = Rx([CategoryItemModel(close:ImageConstant.imgClose.obs,title: "Hotels".obs),CategoryItemModel(close:ImageConstant.imgAirplanePrimary.obs,title: "Flights".obs),CategoryItemModel(close:ImageConstant.imgReply.obs,title: "Trains".obs),CategoryItemModel(close:ImageConstant.imgGrid.obs,title: "More".obs)]);

 }
