import '../../../core/app_export.dart';import 'sin_item_model.dart';/// This class defines the variables used in the [flight_result_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FlightResultListModel {Rx<List<SinItemModel>> sinItemList = Rx([SinItemModel(flyEmirates:ImageConstant.imgEmiratesAirline.obs,title: "Fly Emirates".obs,price: "674".obs,time: "11:05 PM".obs,flyEmirates1:ImageConstant.imgSettingsBlueGray100.obs,flyEmirates2:ImageConstant.imgAirplaneBlueGray30001.obs,flyEmirates3:ImageConstant.imgBarcode.obs,time1: "08:05 AM".obs,distance: "16h 55m (1 stop)".obs,time2: "1h 25m in CDG".obs,transitCounter: "1 Transit".obs),SinItemModel(flyEmirates:ImageConstant.imgQatarAirwaysSvg.obs,title: "Qatar Airways".obs,price: "744".obs,time: "11:05 PM".obs,flyEmirates1:ImageConstant.imgSettingsBlueGray100.obs,flyEmirates2:ImageConstant.imgAirplaneBlueGray30001.obs,flyEmirates3:ImageConstant.imgBarcode.obs,time1: "10:30 AM".obs),SinItemModel(flyEmirates:ImageConstant.imgAirFranceSvg.obs,title: "Air France".obs,price: "564".obs,time: "11:05 PM".obs,flyEmirates1:ImageConstant.imgSettingsBlueGray100.obs,flyEmirates2:ImageConstant.imgAirplaneBlueGray30001.obs,flyEmirates3:ImageConstant.imgBarcode.obs,time1: "04:35 PM".obs,distance: "25h 30m (1 stop)".obs,time2: "10h 25m in CDG".obs,transitCounter: "1 Transit".obs),SinItemModel(flyEmirates:ImageConstant.imgAirFranceSvg.obs,title: "Air France".obs,price: "564".obs,time: "11:05 PM".obs,flyEmirates1:ImageConstant.imgSettingsBlueGray100.obs,flyEmirates2:ImageConstant.imgAirplaneBlueGray30001.obs,flyEmirates3:ImageConstant.imgBarcode.obs,time1: "04:35 PM".obs,distance: "25h 30m (1 stop)".obs,time2: "10h 25m in CDG".obs,transitCounter: "1 Transit".obs)]);

 }
