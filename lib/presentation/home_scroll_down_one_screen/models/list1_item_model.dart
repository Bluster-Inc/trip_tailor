import '../../../core/app_export.dart';/// This class is used in the [list1_item_widget] screen.
class List1ItemModel {List1ItemModel({this.quennAnneBeach, this.quennAnneBeach1, this.title, this.label, this.label1, this.id, }) { quennAnneBeach = quennAnneBeach  ?? Rx(ImageConstant.imgImage100x88);quennAnneBeach1 = quennAnneBeach1  ?? Rx(ImageConstant.imgFavoriteGray900);title = title  ?? Rx("Quenn Anne Beach");label = label  ?? Rx("Hawaii");label1 = label1  ?? Rx("4.8");id = id  ?? Rx(""); }

Rx<String>? quennAnneBeach;

Rx<String>? quennAnneBeach1;

Rx<String>? title;

Rx<String>? label;

Rx<String>? label1;

Rx<String>? id;

 }
