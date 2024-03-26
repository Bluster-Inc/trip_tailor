import '../../../core/app_export.dart';/// This class is used in the [list17_item_widget] screen.
class List17ItemModel {List17ItemModel({this.disneylandPark, this.title, this.label, this.label1, this.id, }) { disneylandPark = disneylandPark  ?? Rx(ImageConstant.imgImg28);title = title  ?? Rx("Disneyland Park");label = label  ?? Rx("California");label1 = label1  ?? Rx("4.9 (1,249)");id = id  ?? Rx(""); }

Rx<String>? disneylandPark;

Rx<String>? title;

Rx<String>? label;

Rx<String>? label1;

Rx<String>? id;

 }
