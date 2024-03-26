import '../../../core/app_export.dart';import 'list17_item_model.dart';import 'admissionmuseum_item_model.dart';/// This class defines the variables used in the [attaraction_all_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AttaractionAllModel {Rx<List<List17ItemModel>> list17ItemList = Rx([List17ItemModel(disneylandPark:ImageConstant.imgImg28.obs,title: "Disneyland Park".obs,label: "California".obs,label1: "4.9 (1,249)".obs),List17ItemModel(disneylandPark:ImageConstant.imgImg29.obs,title: "Universal Studios Hollywood".obs,label: "Hollywood".obs,label1: "4.4 (5,009)".obs)]);

Rx<List<AdmissionmuseumItemModel>> admissionmuseumItemList = Rx([AdmissionmuseumItemModel(admissionMuseum:ImageConstant.imgFavoriteGray900.obs,admissionMuseum1:ImageConstant.imgImg96x88.obs,title: "Admission Museum".obs,hollywood:ImageConstant.imgLinkedinGray600.obs,label: "Hollywood".obs,hollywood1:ImageConstant.imgStarGray600.obs,label1: "4.5 (80)".obs),AdmissionmuseumItemModel(admissionMuseum:ImageConstant.imgImg30.obs,admissionMuseum1:ImageConstant.imgFavoriteGray900.obs,title: "Madame Tussauds Holly...".obs,hollywood:ImageConstant.imgLinkedinGray600.obs,label: "Hollywood".obs,hollywood1:ImageConstant.imgStarGray600.obs,label1: "4.8 (100)".obs)]);

 }
