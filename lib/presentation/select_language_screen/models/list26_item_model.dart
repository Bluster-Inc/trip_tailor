import '../../../core/app_export.dart';/// This class is used in the [list26_item_widget] screen.
class List26ItemModel {List26ItemModel({this.close, this.englishUS, this.check, this.id, }) { close = close  ?? Rx(ImageConstant.imgCloseRed700);englishUS = englishUS  ?? Rx("English (US)");check = check  ?? Rx(ImageConstant.imgArrowLeft);id = id  ?? Rx(""); }

Rx<String>? close;

Rx<String>? englishUS;

Rx<String>? check;

Rx<String>? id;

 }
