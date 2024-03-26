import '../../../core/app_export.dart';/// This class is used in the [month_item_widget] screen.
class MonthItemModel {MonthItemModel({this.groupBy, this.id, }) { groupBy = groupBy  ?? Rx("");id = id  ?? Rx(""); }

Rx<String>? groupBy;

Rx<String>? id;

 }
