import '../../../core/app_export.dart';/// This class is used in the [grid_item_widget] screen.
class GridItemModel {GridItemModel({this.santorini, this.title, this.id, }) { santorini = santorini  ?? Rx(ImageConstant.imgImg88x156);title = title  ?? Rx("Santorini");id = id  ?? Rx(""); }

Rx<String>? santorini;

Rx<String>? title;

Rx<String>? id;

 }
