import '../../../core/app_export.dart';/// This class is used in the [list6_item_widget] screen.
class List6ItemModel {List6ItemModel({this.image, this.title, this.label, this.id, }) { image = image  ?? Rx(ImageConstant.imgImg9);title = title  ?? Rx("The Westin St. Francis");label = label  ?? Rx("Union Square, San Francisco");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? label;

Rx<String>? id;

 }
