import '../../../core/app_export.dart';/// This class is used in the [list25_item_widget] screen.
class List25ItemModel {List25ItemModel({this.iconButton, this.title, this.title1, this.id, }) { iconButton = iconButton  ?? Rx(ImageConstant.imgFlatcoloriconsgoogle);title = title  ?? Rx("Google");title1 = title1  ?? Rx("Connect google account");id = id  ?? Rx(""); }

Rx<String>? iconButton;

Rx<String>? title;

Rx<String>? title1;

Rx<String>? id;

 }
