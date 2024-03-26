import 'button_item_model.dart';import 'stpeachtree_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [hotel_form_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelFormModel {Rx<List<ButtonItemModel>> buttonItemList = Rx(List.generate(2,(index) =>ButtonItemModel()));

Rx<List<StpeachtreeItemModel>> stpeachtreeItemList = Rx(List.generate(1,(index) => StpeachtreeItemModel()));

 }
