import '../../../core/app_export.dart';/// This class is used in the [category2_item_widget] screen.
class Category2ItemModel {Category2ItemModel({this.globe, this.title, this.id, }) { globe = globe  ?? Rx(ImageConstant.imgGlobeGray900);title = title  ?? Rx("General");id = id  ?? Rx(""); }

Rx<String>? globe;

Rx<String>? title;

Rx<String>? id;

 }
