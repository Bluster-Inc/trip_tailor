import '../../../core/app_export.dart';/// This class is used in the [select_item_widget] screen.
class SelectItemModel {SelectItemModel({this.duration, this.label, this.duration1, this.id, }) { duration = duration  ?? Rx("2-Day, 1-Park Disneyland Resort");label = label  ?? Rx("Free cancellation");duration1 = duration1  ?? Rx("2 day");id = id  ?? Rx(""); }

Rx<String>? duration;

Rx<String>? label;

Rx<String>? duration1;

Rx<String>? id;

 }
