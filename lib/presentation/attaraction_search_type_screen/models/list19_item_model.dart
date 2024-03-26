import '../../../core/app_export.dart';/// This class is used in the [list19_item_widget] screen.
class List19ItemModel {List19ItemModel({this.connectionsMuseum, this.title, this.label, this.label1, this.id, }) { connectionsMuseum = connectionsMuseum  ?? Rx(ImageConstant.imgImg34);title = title  ?? Rx("Connections Museum");label = label  ?? Rx("Hollywood");label1 = label1  ?? Rx("0.0 (0)");id = id  ?? Rx(""); }

Rx<String>? connectionsMuseum;

Rx<String>? title;

Rx<String>? label;

Rx<String>? label1;

Rx<String>? id;

 }
