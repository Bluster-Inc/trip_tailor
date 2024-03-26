import '../../../core/app_export.dart';/// This class is used in the [list15_item_widget] screen.
class List15ItemModel {List15ItemModel({this.offer, this.title, this.flightDiscount, this.id, }) { offer = offer  ?? Rx("Flight Discount 50%");title = title  ?? Rx("Valid until Sep 30");flightDiscount = flightDiscount  ?? Rx(ImageConstant.imgCheckPrimary20x20);id = id  ?? Rx(""); }

Rx<String>? offer;

Rx<String>? title;

Rx<String>? flightDiscount;

Rx<String>? id;

 }
