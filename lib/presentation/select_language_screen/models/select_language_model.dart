import '../../../core/app_export.dart';import 'list26_item_model.dart';/// This class defines the variables used in the [select_language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectLanguageModel {Rx<List<List26ItemModel>> list26ItemList = Rx([List26ItemModel(close:ImageConstant.imgCloseRed700.obs,englishUS: "English (US)".obs,check:ImageConstant.imgArrowLeft.obs),List26ItemModel(close:ImageConstant.imgContrastGray5001.obs,englishUS: "Japanese".obs),List26ItemModel(englishUS: "English (ENG)".obs),List26ItemModel(englishUS: "Indonesian".obs),List26ItemModel(englishUS: "Russia".obs),List26ItemModel(englishUS: "French".obs),List26ItemModel(englishUS: "Chinese".obs)]);

 }
