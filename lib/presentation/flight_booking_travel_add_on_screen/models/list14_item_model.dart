import '../../../core/app_export.dart';/// This class is used in the [list14_item_widget] screen.
class List14ItemModel {List14ItemModel({this.bag, this.weight, this.title, this.price, this.id, }) { bag = bag  ?? Rx(ImageConstant.imgBag);weight = weight  ?? Rx("0 KG");title = title  ?? Rx("No. 34098XX");price = price  ?? Rx("0.00");id = id  ?? Rx(""); }

Rx<String>? bag;

Rx<String>? weight;

Rx<String>? title;

Rx<String>? price;

Rx<String>? id;

 }
