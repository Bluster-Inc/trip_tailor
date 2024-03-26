import '../../../core/app_export.dart';/// This class is used in the [list11_item_widget] screen.
class List11ItemModel {List11ItemModel({this.paypal, this.title, this.title1, this.id, }) { paypal = paypal  ?? Rx(ImageConstant.imgLogosPaypal);title = title  ?? Rx("Paypal");title1 = title1  ?? Rx("fra*****@mail.com");id = id  ?? Rx(""); }

Rx<String>? paypal;

Rx<String>? title;

Rx<String>? title1;

Rx<String>? id;

 }
