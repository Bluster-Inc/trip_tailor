import '../../../core/app_export.dart';/// This class is used in the [hiltoncatedral_item_widget] screen.
class HiltoncatedralItemModel {HiltoncatedralItemModel({this.hiltonCatedral, this.title, this.label, this.id, }) { hiltonCatedral = hiltonCatedral  ?? Rx(ImageConstant.imgImg180x154);title = title  ?? Rx("Hilton Catedral");label = label  ?? Rx("Los Angeles");id = id  ?? Rx(""); }

Rx<String>? hiltonCatedral;

Rx<String>? title;

Rx<String>? label;

Rx<String>? id;

 }
