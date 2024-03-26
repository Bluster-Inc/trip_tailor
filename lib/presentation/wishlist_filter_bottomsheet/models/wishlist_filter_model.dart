import 'package:trip_tailor/core/app_export.dart';import '../../../core/app_export.dart';import 'list22_item_model.dart';/// This class defines the variables used in the [wishlist_filter_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistFilterModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<List22ItemModel>> list22ItemList = Rx([List22ItemModel(duration: "Past 30 days".obs,check:ImageConstant.imgArrowLeft.obs),List22ItemModel(duration: "Past 90 days".obs),List22ItemModel(duration: "By dates".obs)]);

 }
