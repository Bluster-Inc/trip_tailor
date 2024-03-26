import '../../../core/app_export.dart';/// This class is used in the [list22_item_widget] screen.
class List22ItemModel {List22ItemModel({this.duration, this.check, this.id, }) { duration = duration  ?? Rx("Past 30 days");check = check  ?? Rx(ImageConstant.imgArrowLeft);id = id  ?? Rx(""); }

Rx<String>? duration;

Rx<String>? check;

Rx<String>? id;

 }
