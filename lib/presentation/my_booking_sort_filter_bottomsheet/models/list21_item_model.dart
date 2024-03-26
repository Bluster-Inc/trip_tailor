import '../../../core/app_export.dart';/// This class is used in the [list21_item_widget] screen.
class List21ItemModel {List21ItemModel({this.title, this.check, this.id, }) { title = title  ?? Rx("Today");check = check  ?? Rx(ImageConstant.imgArrowLeft);id = id  ?? Rx(""); }

Rx<String>? title;

Rx<String>? check;

Rx<String>? id;

 }
