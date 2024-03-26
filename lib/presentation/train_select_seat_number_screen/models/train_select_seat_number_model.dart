import 'businessclass_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [train_select_seat_number_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrainSelectSeatNumberModel {Rx<List<BusinessclassItemModel>> businessclassItemList = Rx(List.generate(2,(index) => BusinessclassItemModel()));

 }
