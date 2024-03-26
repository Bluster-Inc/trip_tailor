import '../../../core/app_export.dart';/// This class is used in the [list7_item_widget] screen.
class List7ItemModel {List7ItemModel({this.label, this.label1, this.id, }) { label = label  ?? Rx("Los Angeles");label1 = label1  ?? Rx("California, United States");id = id  ?? Rx(""); }

Rx<String>? label;

Rx<String>? label1;

Rx<String>? id;

 }
