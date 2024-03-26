import '../../../core/app_export.dart';import 'list25_item_model.dart';/// This class defines the variables used in the [link_account_social_media_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LinkAccountSocialMediaModel {Rx<List<List25ItemModel>> list25ItemList = Rx([List25ItemModel(iconButton:ImageConstant.imgFlatcoloriconsgoogle.obs,title: "Google".obs,title1: "Connect google account".obs),List25ItemModel(iconButton:ImageConstant.imgFacebook.obs,title: "Facebook".obs,title1: "Connect facebook account".obs),List25ItemModel(iconButton:ImageConstant.imgIcon48x48.obs,title: "Instagram".obs,title1: "Connect instagram account".obs)]);

 }
