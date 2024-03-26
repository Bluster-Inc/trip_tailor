import '../../../core/app_export.dart';/// This class is used in the [holiday001_item_widget] screen.
class Holiday001ItemModel {Holiday001ItemModel({this.upto, this.upto1, this.title, this.title1, this.title2, this.offer, this.id, }) { upto = upto  ?? Rx(ImageConstant.imgGroupLightBlueA20025x76);upto1 = upto1  ?? Rx(ImageConstant.imgImg100x130);title = title  ?? Rx("up\nto");title1 = title1  ?? Rx("Hotel discount coupon");title2 = title2  ?? Rx("*T&C Apply");offer = offer  ?? Rx("50% OFF");id = id  ?? Rx(""); }

Rx<String>? upto;

Rx<String>? upto1;

Rx<String>? title;

Rx<String>? title1;

Rx<String>? title2;

Rx<String>? offer;

Rx<String>? id;

 }
