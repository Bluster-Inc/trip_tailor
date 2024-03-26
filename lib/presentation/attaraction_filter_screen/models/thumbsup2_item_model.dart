import '../../../core/app_export.dart';/// This class is used in the [thumbsup2_item_widget] screen.
class Thumbsup2ItemModel {Thumbsup2ItemModel({this.thumbsUp, this.title, this.title1, this.id, }) { thumbsUp = thumbsUp  ?? Rx(ImageConstant.imgThumbsUpPrimary);title = title  ?? Rx("Early Morning");title1 = title1  ?? Rx("00:00 - 04:59");id = id  ?? Rx(""); }

Rx<String>? thumbsUp;

Rx<String>? title;

Rx<String>? title1;

Rx<String>? id;

 }
