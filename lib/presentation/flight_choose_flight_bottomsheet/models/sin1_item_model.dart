import '../../../core/app_export.dart';/// This class is used in the [sin1_item_widget] screen.
class Sin1ItemModel {Sin1ItemModel({this.title, this.price, this.time, this.time1, this.label, this.label1, this.label2, this.id, }) { title = title  ?? Rx("Qatar Airways");price = price  ?? Rx("744");time = time  ?? Rx("11:05 PM");time1 = time1  ?? Rx("10:30 AM");label = label  ?? Rx("Refund");label1 = label1  ?? Rx("Reschedule");label2 = label2  ?? Rx("Economy Light");id = id  ?? Rx(""); }

Rx<String>? title;

Rx<String>? price;

Rx<String>? time;

Rx<String>? time1;

Rx<String>? label;

Rx<String>? label1;

Rx<String>? label2;

Rx<String>? id;

 }
