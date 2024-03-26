import '../../../core/app_export.dart';/// This class is used in the [list3_item_widget] screen.
class List3ItemModel {List3ItemModel({this.dubaiUEA, this.title, this.id, }) { dubaiUEA = dubaiUEA  ?? Rx(ImageConstant.imgImage3);title = title  ?? Rx("Dubai, UEA");id = id  ?? Rx(""); }

Rx<String>? dubaiUEA;

Rx<String>? title;

Rx<String>? id;

 }
