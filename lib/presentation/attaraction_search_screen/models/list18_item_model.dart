import '../../../core/app_export.dart';/// This class is used in the [list18_item_widget] screen.
class List18ItemModel {List18ItemModel({this.image, this.title, this.label, this.id, }) { image = image  ?? Rx(ImageConstant.imgImg31);title = title  ?? Rx("Legoland California Resort");label = label  ?? Rx("California");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? label;

Rx<String>? id;

 }
