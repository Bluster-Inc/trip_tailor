import 'month_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [my_booking_list_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBookingListModel {Rx<List<MonthItemModel>> monthItemList = Rx([MonthItemModel(groupBy: "August 2022".obs),MonthItemModel(groupBy: "September 2022".obs),MonthItemModel(groupBy: "September 2022".obs)]);

 }
