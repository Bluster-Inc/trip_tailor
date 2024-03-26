import '../../../core/app_export.dart';/// This class is used in the [category1_item_widget] screen.
class Category1ItemModel {Category1ItemModel({this.bedroom, this.title, this.title1, this.id, }) { bedroom = bedroom  ?? Rx(ImageConstant.imgBedPrimary);title = title  ?? Rx("Bedroom");title1 = title1  ?? Rx("1 King bed");id = id  ?? Rx(""); }

Rx<String>? bedroom;

Rx<String>? title;

Rx<String>? title1;

Rx<String>? id;

 }
