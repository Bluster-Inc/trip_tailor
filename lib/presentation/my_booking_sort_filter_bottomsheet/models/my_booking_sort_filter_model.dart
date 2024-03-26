import 'package:trip_tailor/core/app_export.dart';import '../../../core/app_export.dart';import 'list21_item_model.dart';/// This class defines the variables used in the [my_booking_sort_filter_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBookingSortFilterModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<List21ItemModel>> list21ItemList = Rx([List21ItemModel(title: "Today".obs,check:ImageConstant.imgArrowLeft.obs),List21ItemModel(title: "Tommorow".obs),List21ItemModel(title: "By dates".obs)]);

 }
