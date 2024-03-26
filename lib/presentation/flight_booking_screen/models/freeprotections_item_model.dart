import '../../../core/app_export.dart';/// This class is used in the [freeprotections_item_widget] screen.
class FreeprotectionsItemModel {FreeprotectionsItemModel({this.freeprotections, this.label, this.check, this.description, this.label1, this.id, }) { freeprotections = freeprotections  ?? Rx(ImageConstant.imgTrophyBlueGray30001);label = label  ?? Rx("Free protections");check = check  ?? Rx(ImageConstant.imgArrowLeft);description = description  ?? Rx("Covering trip accident, medical bills, inpatient care, and cancellations due to specific reasons or COVID-19 up to 1,000.");label1 = label1  ?? Rx("See details");id = id  ?? Rx(""); }

Rx<String>? freeprotections;

Rx<String>? label;

Rx<String>? check;

Rx<String>? description;

Rx<String>? label1;

Rx<String>? id;

 }
