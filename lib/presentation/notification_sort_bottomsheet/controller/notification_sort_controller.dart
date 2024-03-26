import '../../../core/app_export.dart';
import '../models/notification_sort_model.dart';

/// A controller class for the NotificationSortBottomsheet.
///
/// This class manages the state of the NotificationSortBottomsheet, including the
/// current notificationSortModelObj
class NotificationSortController extends GetxController {
  Rx<NotificationSortModel> notificationSortModelObj =
      NotificationSortModel().obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;
}
