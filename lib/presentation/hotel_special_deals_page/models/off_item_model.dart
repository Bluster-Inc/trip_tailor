import '../../../core/app_export.dart';/// This class is used in the [off_item_widget] screen.
class OffItemModel {OffItemModel({this.image, this.title, this.label, this.label1, this.id, }) { image = image  ?? Rx(ImageConstant.imgImg17);title = title  ?? Rx("Travelodge by Wyldham");label = label  ?? Rx("Los Angeles");label1 = label1  ?? Rx("4.8");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? label;

Rx<String>? label1;

Rx<String>? id;

 }
