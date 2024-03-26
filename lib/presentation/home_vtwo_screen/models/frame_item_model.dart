import '../../../core/app_export.dart';/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {FrameItemModel({this.stPeachtree, this.title, this.label, this.id, }) { stPeachtree = stPeachtree  ?? Rx(ImageConstant.imgImage240x200);title = title  ?? Rx("The Ritz Carlton");label = label  ?? Rx("St Peachtree");id = id  ?? Rx(""); }

Rx<String>? stPeachtree;

Rx<String>? title;

Rx<String>? label;

Rx<String>? id;

 }
