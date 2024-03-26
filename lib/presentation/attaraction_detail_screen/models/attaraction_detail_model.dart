import '../../../core/app_export.dart';import 'select_item_model.dart';/// This class defines the variables used in the [attaraction_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AttaractionDetailModel {Rx<List<SelectItemModel>> selectItemList = Rx([SelectItemModel(duration: "2-Day, 1-Park Disneyland Resort".obs,label: "Free cancellation".obs,duration1: "2 day".obs),SelectItemModel(duration: "2-Day, Disneyland Park-Hopper".obs,label: "Free cancellation".obs,duration1: "2 day".obs),SelectItemModel(duration: "3-Day, 1-Park Disneyland Resort".obs,label: "Free cancellation".obs,duration1: "3 day".obs)]);

 }
