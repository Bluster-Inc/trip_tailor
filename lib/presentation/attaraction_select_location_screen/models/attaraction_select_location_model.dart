import '../../../core/app_export.dart';import 'list20_item_model.dart';/// This class defines the variables used in the [attaraction_select_location_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AttaractionSelectLocationModel {Rx<List<List20ItemModel>> list20ItemList = Rx([List20ItemModel(label: "Los Angeles".obs,label1: "California, United States".obs),List20ItemModel(label: "Los Mochis".obs,label1: "Sinaloa, Mexico".obs),List20ItemModel(label: "Los Angeles".obs,label1: "Los Angeles, Chile".obs),List20ItemModel(label: "Los Cristianos".obs,label1: "Los Cristianos, Spain".obs)]);

 }
