import '../../../core/app_export.dart';/// This class is used in the [link_item_widget] screen.
class LinkItemModel {LinkItemModel({this.groupBy, this.id, }) { groupBy = groupBy  ?? Rx("");id = id  ?? Rx(""); }

Rx<String>? groupBy;

Rx<String>? id;

 }
