import '../../../core/app_export.dart';/// This class is used in the [list8_item_widget] screen.
class List8ItemModel {List8ItemModel({this.image, this.title, this.label, this.label1, this.price, this.id, }) { image = image  ?? Rx(ImageConstant.imgImg150x240);title = title  ?? Rx("Mondrian Los Angeles");label = label  ?? Rx("West Hollywood");label1 = label1  ?? Rx("4.5");price = price  ?? Rx("450");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? label;

Rx<String>? label1;

Rx<String>? price;

Rx<String>? id;

 }
