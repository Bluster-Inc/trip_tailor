import '../../../core/app_export.dart';/// This class is used in the [frame1_item_widget] screen.
class Frame1ItemModel {Frame1ItemModel({this.luxuryApartment, this.title, this.label, this.id, }) { luxuryApartment = luxuryApartment  ?? Rx(ImageConstant.imgImg5);title = title  ?? Rx("Luxury Apartment");label = label  ?? Rx("California, United States");id = id  ?? Rx(""); }

Rx<String>? luxuryApartment;

Rx<String>? title;

Rx<String>? label;

Rx<String>? id;

 }
