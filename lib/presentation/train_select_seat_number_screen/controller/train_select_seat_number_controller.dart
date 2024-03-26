import '../../../core/app_export.dart';import '../models/train_select_seat_number_model.dart';/// A controller class for the TrainSelectSeatNumberScreen.
///
/// This class manages the state of the TrainSelectSeatNumberScreen, including the
/// current trainSelectSeatNumberModelObj
class TrainSelectSeatNumberController extends GetxController {Rx<TrainSelectSeatNumberModel> trainSelectSeatNumberModelObj = TrainSelectSeatNumberModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
