import '../../../core/app_export.dart';import '../models/wishlist_model.dart';/// A controller class for the WishlistScreen.
///
/// This class manages the state of the WishlistScreen, including the
/// current wishlistModelObj
class WishlistController extends GetxController {Rx<WishlistModel> wishlistModelObj = WishlistModel().obs;

 }
