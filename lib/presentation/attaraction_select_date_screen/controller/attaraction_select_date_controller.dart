import '../../../core/app_export.dart';import '../models/attaraction_select_date_model.dart';import 'package:calendar_date_picker2/calendar_date_picker2.dart';/// A controller class for the AttaractionSelectDateScreen.
///
/// This class manages the state of the AttaractionSelectDateScreen, including the
/// current attaractionSelectDateModelObj
class AttaractionSelectDateController extends GetxController {Rx<AttaractionSelectDateModel> attaractionSelectDateModelObj = AttaractionSelectDateModel().obs;

Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);

Rx<List<DateTime?>> selectedDatesFromCalendar2 = Rx([]);

 }
