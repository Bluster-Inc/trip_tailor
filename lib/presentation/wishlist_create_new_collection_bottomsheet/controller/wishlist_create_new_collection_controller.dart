import '../../../core/app_export.dart';import '../models/wishlist_create_new_collection_model.dart';import 'package:flutter/material.dart';/// A controller class for the WishlistCreateNewCollectionBottomsheet.
///
/// This class manages the state of the WishlistCreateNewCollectionBottomsheet, including the
/// current wishlistCreateNewCollectionModelObj
class WishlistCreateNewCollectionController extends GetxController {TextEditingController nameController = TextEditingController();

Rx<WishlistCreateNewCollectionModel> wishlistCreateNewCollectionModelObj = WishlistCreateNewCollectionModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

@override void onClose() { super.onClose(); nameController.dispose(); } 
 }
