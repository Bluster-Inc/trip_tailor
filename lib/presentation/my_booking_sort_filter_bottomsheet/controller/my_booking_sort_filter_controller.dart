import '../../../core/app_export.dart';import '../models/my_booking_sort_filter_model.dart';/// A controller class for the MyBookingSortFilterBottomsheet.
///
/// This class manages the state of the MyBookingSortFilterBottomsheet, including the
/// current myBookingSortFilterModelObj
class MyBookingSortFilterController extends GetxController {Rx<MyBookingSortFilterModel> myBookingSortFilterModelObj = MyBookingSortFilterModel().obs;

Rx<bool> purchasedate = false.obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in myBookingSortFilterModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} myBookingSortFilterModelObj.value.dropdownItemList.refresh(); } 
 }
