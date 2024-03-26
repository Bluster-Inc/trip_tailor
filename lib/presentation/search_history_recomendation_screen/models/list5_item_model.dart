import '../../../core/app_export.dart';/// This class is used in the [list5_item_widget] screen.
class List5ItemModel {List5ItemModel({this.image, this.title, this.label, this.id, }) { image = image  ?? Rx(ImageConstant.imgImg72x72);title = title  ?? Rx("Apeiron Blue Santorini");label = label  ?? Rx("Santorini, Greece");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? label;

Rx<String>? id;

 }
