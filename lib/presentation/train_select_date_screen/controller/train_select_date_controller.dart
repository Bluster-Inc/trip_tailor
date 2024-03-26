import '../../../core/app_export.dart';
import '../models/train_select_date_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A controller class for the TrainSelectDateScreen.
///
/// This class manages the state of the TrainSelectDateScreen, including the
/// current trainSelectDateModelObj
class TrainSelectDateController extends GetxController {
  Rx<TrainSelectDateModel> trainSelectDateModelObj = TrainSelectDateModel().obs;

  Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);

  Rx<List<DateTime?>> selectedDatesFromCalendar2 = Rx([]);
}
