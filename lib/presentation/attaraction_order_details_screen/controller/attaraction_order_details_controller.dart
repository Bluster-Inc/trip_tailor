import '../../../core/app_export.dart';import '../models/attaraction_order_details_model.dart';import 'package:calendar_date_picker2/calendar_date_picker2.dart';/// A controller class for the AttaractionOrderDetailsScreen.
///
/// This class manages the state of the AttaractionOrderDetailsScreen, including the
/// current attaractionOrderDetailsModelObj
class AttaractionOrderDetailsController extends GetxController {Rx<AttaractionOrderDetailsModel> attaractionOrderDetailsModelObj = AttaractionOrderDetailsModel().obs;

Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);

 }
