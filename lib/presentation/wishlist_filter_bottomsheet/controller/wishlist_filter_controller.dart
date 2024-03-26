import '../../../core/app_export.dart';import '../models/wishlist_filter_model.dart';/// A controller class for the WishlistFilterBottomsheet.
///
/// This class manages the state of the WishlistFilterBottomsheet, including the
/// current wishlistFilterModelObj
class WishlistFilterController extends GetxController {Rx<WishlistFilterModel> wishlistFilterModelObj = WishlistFilterModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in wishlistFilterModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} wishlistFilterModelObj.value.dropdownItemList.refresh(); } 
 }
