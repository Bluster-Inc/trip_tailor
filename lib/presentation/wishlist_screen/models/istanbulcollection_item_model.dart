import '../../../core/app_export.dart';/// This class is used in the [istanbulcollection_item_widget] screen.
class IstanbulcollectionItemModel {IstanbulcollectionItemModel({this.istanbulcollection, this.img, this.img1, this.label, this.id, }) { istanbulcollection = istanbulcollection  ?? Rx(ImageConstant.imgImg150x184);img = img  ?? Rx(ImageConstant.imgImg69x107);img1 = img1  ?? Rx(ImageConstant.imgImg43);label = label  ?? Rx("Istanbul collection");id = id  ?? Rx(""); }

Rx<String>? istanbulcollection;

Rx<String>? img;

Rx<String>? img1;

Rx<String>? label;

Rx<String>? id;

 }
