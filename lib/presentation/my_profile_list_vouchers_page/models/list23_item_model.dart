import '../../../core/app_export.dart';/// This class is used in the [list23_item_widget] screen.
class List23ItemModel {List23ItemModel({this.upto, this.upto1, this.upto2, this.upto3, this.title, this.title1, this.title2, this.offer, this.upto4, this.upto5, this.id, }) { upto = upto  ?? Rx(ImageConstant.imgVectorLightBlueA200);upto1 = upto1  ?? Rx(ImageConstant.imgVectorLightBlueA200);upto2 = upto2  ?? Rx(ImageConstant.imgVectorLightBlueA2001x4);upto3 = upto3  ?? Rx(ImageConstant.imgVectorLightBlueA2001x4);title = title  ?? Rx("up\nto");title1 = title1  ?? Rx("Hotel discount coupon");title2 = title2  ?? Rx("*T&C Apply");offer = offer  ?? Rx("50% OFF");upto4 = upto4  ?? Rx(ImageConstant.imgGroupLightBlueA20025x76);upto5 = upto5  ?? Rx(ImageConstant.imgImg100x130);id = id  ?? Rx(""); }

Rx<String>? upto;

Rx<String>? upto1;

Rx<String>? upto2;

Rx<String>? upto3;

Rx<String>? title;

Rx<String>? title1;

Rx<String>? title2;

Rx<String>? offer;

Rx<String>? upto4;

Rx<String>? upto5;

Rx<String>? id;

 }
