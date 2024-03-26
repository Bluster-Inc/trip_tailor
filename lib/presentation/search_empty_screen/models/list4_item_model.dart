import '../../../core/app_export.dart';/// This class is used in the [list4_item_widget] screen.
class List4ItemModel {List4ItemModel({this.label, this.label1, this.id, }) { label = label  ?? Rx("San Francisco");label1 = label1  ?? Rx("California, United States");id = id  ?? Rx(""); }

Rx<String>? label;

Rx<String>? label1;

Rx<String>? id;

 }
