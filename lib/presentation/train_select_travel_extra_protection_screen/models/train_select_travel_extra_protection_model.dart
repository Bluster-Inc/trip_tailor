import '../../../core/app_export.dart';import 'list16_item_model.dart';/// This class defines the variables used in the [train_select_travel_extra_protection_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrainSelectTravelExtraProtectionModel {Rx<List<List16ItemModel>> list16ItemList = Rx([List16ItemModel(freeprotections:ImageConstant.imgTrophyBlueGray30001.obs,label: "Free protections".obs,check:ImageConstant.imgArrowLeft.obs,description: "Covering trip accident, medical bills, inpatient care, and cancellations due to specific reasons or COVID-19 up to 1,000.".obs,label1: "See details".obs),List16ItemModel(freeprotections:ImageConstant.imgHome.obs,label: "Full trip protections".obs,check:ImageConstant.imgArrowLeft.obs,description: "Covering trip accident, medical bills, inpatient care, and cancellations due to specific reasons or COVID-19 up to 1,000.".obs,label1: "See details".obs),List16ItemModel(freeprotections:ImageConstant.imgSearch.obs,label: "COVID-19 Insurance".obs,description: "Protects you if you're diagnosed with COVID-19 and compensates for swab/PCR test, hospitalization, and others up to 3,489".obs,label1: "See details".obs)]);

 }