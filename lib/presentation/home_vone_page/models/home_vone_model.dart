import '../../../core/app_export.dart';import 'list_item_model.dart';/// This class defines the variables used in the [home_vone_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeVoneModel {Rx<List<ListItemModel>> listItemList = Rx([ListItemModel(image:ImageConstant.imgImage150x240.obs,image1:ImageConstant.imgImg.obs,title: "Mariposa Los Angeles".obs,label: "Los Angeles".obs,label1: "4.9".obs),ListItemModel(image:ImageConstant.imgImag.obs,title: "Home in Kissimmee".obs,label: "Florida".obs,label1: "4.9".obs)]);

 }
