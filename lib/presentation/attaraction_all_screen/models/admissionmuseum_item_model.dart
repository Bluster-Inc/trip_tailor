import '../../../core/app_export.dart';/// This class is used in the [admissionmuseum_item_widget] screen.
class AdmissionmuseumItemModel {AdmissionmuseumItemModel({this.admissionMuseum, this.admissionMuseum1, this.title, this.hollywood, this.label, this.hollywood1, this.label1, this.id, }) { admissionMuseum = admissionMuseum  ?? Rx(ImageConstant.imgFavoriteGray900);admissionMuseum1 = admissionMuseum1  ?? Rx(ImageConstant.imgImg96x88);title = title  ?? Rx("Admission Museum");hollywood = hollywood  ?? Rx(ImageConstant.imgLinkedinGray600);label = label  ?? Rx("Hollywood");hollywood1 = hollywood1  ?? Rx(ImageConstant.imgStarGray600);label1 = label1  ?? Rx("4.5 (80)");id = id  ?? Rx(""); }

Rx<String>? admissionMuseum;

Rx<String>? admissionMuseum1;

Rx<String>? title;

Rx<String>? hollywood;

Rx<String>? label;

Rx<String>? hollywood1;

Rx<String>? label1;

Rx<String>? id;

 }
