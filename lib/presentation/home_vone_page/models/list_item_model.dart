import '../../../core/app_export.dart';/// This class is used in the [list_item_widget] screen.
class ListItemModel {ListItemModel({this.image, this.image1, this.title, this.label, this.label1, this.id, }) { image = image  ?? Rx(ImageConstant.imgImage150x240);image1 = image1  ?? Rx(ImageConstant.imgImg);title = title  ?? Rx("Mariposa Los Angeles");label = label  ?? Rx("Los Angeles");label1 = label1  ?? Rx("4.9");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? image1;

Rx<String>? title;

Rx<String>? label;

Rx<String>? label1;

Rx<String>? id;

 }
