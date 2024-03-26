import '../../../core/app_export.dart';import 'list4_item_model.dart';/// This class defines the variables used in the [search_empty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchEmptyModel {Rx<List<List4ItemModel>> list4ItemList = Rx([List4ItemModel(label: "San Francisco".obs,label1: "California, United States".obs),List4ItemModel(label: "New York City".obs,label1: "New York, United States".obs),List4ItemModel(label: "Los Angeles".obs,label1: "California, United States".obs),List4ItemModel(label: "London".obs,label1: "England, United Kingdom".obs)]);

 }
