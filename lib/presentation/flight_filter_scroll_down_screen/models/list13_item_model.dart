import '../../../core/app_export.dart';/// This class is used in the [list13_item_widget] screen.
class List13ItemModel {List13ItemModel({this.title, this.id, }) { title = title  ?? Rx("Seat choice included");id = id  ?? Rx(""); }

Rx<String>? title;

Rx<String>? id;

 }
