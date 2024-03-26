import '../../../core/app_export.dart';/// This class is used in the [title_item_widget] screen.
class TitleItemModel {TitleItemModel({this.title, this.title1, this.firstclass, this.id, }) { title = title  ?? Rx("First class");title1 = title1  ?? Rx("68 seats available");firstclass = firstclass  ?? Rx(ImageConstant.imgContrastOnprimarycontainer);id = id  ?? Rx(""); }

Rx<String>? title;

Rx<String>? title1;

Rx<String>? firstclass;

Rx<String>? id;

 }
