import '../../../core/app_export.dart';/// This class is used in the [list12_item_widget] screen.
class List12ItemModel {List12ItemModel({this.offer, this.title, this.title1, this.id, }) { offer = offer  ?? Rx("Hotel Discount 50%");title = title  ?? Rx("Valid until Sep 30");title1 = title1  ?? Rx("Use");id = id  ?? Rx(""); }

Rx<String>? offer;

Rx<String>? title;

Rx<String>? title1;

Rx<String>? id;

 }
