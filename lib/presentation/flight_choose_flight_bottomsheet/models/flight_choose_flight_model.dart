import '../../../core/app_export.dart';import 'sin1_item_model.dart';/// This class defines the variables used in the [flight_choose_flight_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FlightChooseFlightModel {Rx<List<Sin1ItemModel>> sin1ItemList = Rx([Sin1ItemModel(title: "Qatar Airways".obs,price: "744".obs,time: "11:05 PM".obs,time1: "10:30 AM".obs,label: "Refund".obs,label1: "Reschedule".obs,label2: "Economy Light".obs),Sin1ItemModel(title: "Qatar Airways".obs,price: "987".obs,time: "11:05 PM".obs,time1: "10:30 AM".obs,label: "Refund".obs,label1: "Reschedule".obs,label2: "Economy Classic".obs)]);

 }
