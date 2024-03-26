import '../../../core/app_export.dart';
import '../models/my_booking_list_model.dart';

/// A controller class for the MyBookingListPage.
///
/// This class manages the state of the MyBookingListPage, including the
/// current myBookingListModelObj
class MyBookingListController extends GetxController {
  MyBookingListController(this.myBookingListModelObj);

  Rx<MyBookingListModel> myBookingListModelObj;
}
