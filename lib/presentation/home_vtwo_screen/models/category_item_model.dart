import '../../../core/app_export.dart';/// This class is used in the [category_item_widget] screen.
class CategoryItemModel {CategoryItemModel({this.close, this.title, this.id, }) { close = close  ?? Rx(ImageConstant.imgClose);title = title  ?? Rx("Hotels");id = id  ?? Rx(""); }

Rx<String>? close;

Rx<String>? title;

Rx<String>? id;

 }
