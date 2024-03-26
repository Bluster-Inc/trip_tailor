import '../../../core/app_export.dart';/// This class is used in the [sin_item_widget] screen.
class SinItemModel {SinItemModel({this.flyEmirates, this.title, this.price, this.time, this.flyEmirates1, this.flyEmirates2, this.flyEmirates3, this.time1, this.distance, this.time2, this.transitCounter, this.id, }) { flyEmirates = flyEmirates  ?? Rx(ImageConstant.imgEmiratesAirline);title = title  ?? Rx("Fly Emirates");price = price  ?? Rx("674");time = time  ?? Rx("11:05 PM");flyEmirates1 = flyEmirates1  ?? Rx(ImageConstant.imgSettingsBlueGray100);flyEmirates2 = flyEmirates2  ?? Rx(ImageConstant.imgAirplaneBlueGray30001);flyEmirates3 = flyEmirates3  ?? Rx(ImageConstant.imgBarcode);time1 = time1  ?? Rx("08:05 AM");distance = distance  ?? Rx("16h 55m (1 stop)");time2 = time2  ?? Rx("1h 25m in CDG");transitCounter = transitCounter  ?? Rx("1 Transit");id = id  ?? Rx(""); }

Rx<String>? flyEmirates;

Rx<String>? title;

Rx<String>? price;

Rx<String>? time;

Rx<String>? flyEmirates1;

Rx<String>? flyEmirates2;

Rx<String>? flyEmirates3;

Rx<String>? time1;

Rx<String>? distance;

Rx<String>? time2;

Rx<String>? transitCounter;

Rx<String>? id;

 }
