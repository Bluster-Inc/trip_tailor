import '../../../core/app_export.dart';/// This class is used in the [krishnabarbe_item_widget] screen.
class KrishnabarbeItemModel {KrishnabarbeItemModel({this.krishnaBarbe, this.title, this.duration, this.description, this.subtitle, this.id, }) { krishnaBarbe = krishnaBarbe  ?? Rx(ImageConstant.imgAvatar);title = title  ?? Rx("Krishna Barbe");duration = duration  ?? Rx("6 days ago");description = description  ?? Rx("Great location! Just right across from Crypto Arena and LACC! Also appreciate getting a room ready for me early in the morning!");subtitle = subtitle  ?? Rx("Was this review helpful?");id = id  ?? Rx(""); }

Rx<String>? krishnaBarbe;

Rx<String>? title;

Rx<String>? duration;

Rx<String>? description;

Rx<String>? subtitle;

Rx<String>? id;

 }
