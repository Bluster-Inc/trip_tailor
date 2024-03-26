import '../../../core/app_export.dart';import 'istanbulcollection_item_model.dart';/// This class defines the variables used in the [wishlist_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistModel {Rx<List<IstanbulcollectionItemModel>> istanbulcollectionItemList = Rx([IstanbulcollectionItemModel(istanbulcollection:ImageConstant.imgImg150x184.obs,img:ImageConstant.imgImg69x107.obs,img1:ImageConstant.imgImg43.obs,label: "Istanbul collection".obs),IstanbulcollectionItemModel(istanbulcollection:ImageConstant.imgImg44.obs,img:ImageConstant.imgImg42.obs,img1:ImageConstant.imgImg45.obs,label: "Cool Place".obs)]);

 }
