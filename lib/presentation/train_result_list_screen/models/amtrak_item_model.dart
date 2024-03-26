import '../../../core/app_export.dart';/// This class is used in the [amtrak_item_widget] screen.
class AmtrakItemModel {AmtrakItemModel({this.amtrak, this.title, this.price, this.time, this.tags, this.amtrak1, this.amtrak2, this.amtrak3, this.time1, this.tags1, this.distance, this.title1, this.id, }) { amtrak = amtrak  ?? Rx(ImageConstant.imgAmtrakSvg);title = title  ?? Rx("Amtrak");price = price  ?? Rx("35.00");time = time  ?? Rx("06:10 AM");tags = tags  ?? Rx("Los Angeles");amtrak1 = amtrak1  ?? Rx(ImageConstant.imgSettingsBlueGray1006x43);amtrak2 = amtrak2  ?? Rx(ImageConstant.imgTrain);amtrak3 = amtrak3  ?? Rx(ImageConstant.imgSettings6x43);time1 = time1  ?? Rx("08:50AM");tags1 = tags1  ?? Rx("San Diego");distance = distance  ?? Rx("2h 40m");title1 = title1  ?? Rx("Direct");id = id  ?? Rx(""); }

Rx<String>? amtrak;

Rx<String>? title;

Rx<String>? price;

Rx<String>? time;

Rx<String>? tags;

Rx<String>? amtrak1;

Rx<String>? amtrak2;

Rx<String>? amtrak3;

Rx<String>? time1;

Rx<String>? tags1;

Rx<String>? distance;

Rx<String>? title1;

Rx<String>? id;

 }
