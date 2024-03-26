import '../../../core/app_export.dart';/// This class is used in the [list24_item_widget] screen.
class List24ItemModel {List24ItemModel({this.title, this.title1, this.month, this.title2, this.id, }) { title = title  ?? Rx("Cashback");title1 = title1  ?? Rx("Up to 50%");month = month  ?? Rx("Valid until July 14,2022");title2 = title2  ?? Rx("Details");id = id  ?? Rx(""); }

Rx<String>? title;

Rx<String>? title1;

Rx<String>? month;

Rx<String>? title2;

Rx<String>? id;

 }
