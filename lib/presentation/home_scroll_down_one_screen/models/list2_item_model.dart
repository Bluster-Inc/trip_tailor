import '../../../core/app_export.dart';/// This class is used in the [list2_item_widget] screen.
class List2ItemModel {List2ItemModel({this.dubaiUEA, this.title, this.id, }) { dubaiUEA = dubaiUEA  ?? Rx(ImageConstant.imgImage120x193);title = title  ?? Rx("Dubai, UEA");id = id  ?? Rx(""); }

Rx<String>? dubaiUEA;

Rx<String>? title;

Rx<String>? id;

 }
