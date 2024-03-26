import '../../../core/app_export.dart';import '../models/hotel_special_deals_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the HotelSpecialDealsTabContainerScreen.
///
/// This class manages the state of the HotelSpecialDealsTabContainerScreen, including the
/// current hotelSpecialDealsTabContainerModelObj
class HotelSpecialDealsTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController searchController = TextEditingController();

Rx<HotelSpecialDealsTabContainerModel> hotelSpecialDealsTabContainerModelObj = HotelSpecialDealsTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 4));

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
